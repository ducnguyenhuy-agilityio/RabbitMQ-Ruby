#!/usr/bin/env ruby
require 'bunny'

connection = Bunny.new(hostname: 'rabbitmq', automatically_recover: false)
connection.start

channel = connection.create_channel
queue = channel.queue('hello')

begin
  puts '[*] Waiting for messeges. To exit press CTRL+C'
  # manual_ack: turn on/off message acknowledgment feature
  queue.subscribe(block: true, manual_ack: true) do |_delivery_info, _properties, body|
    puts "[x] Received #{body}"
    sleep body.count('.').to_i
    puts '[x] Done'
    channel.ack(_delivery_info.delivery_tag)
  end
rescue Interrupt => _
  connection.close
  exit(0)
end

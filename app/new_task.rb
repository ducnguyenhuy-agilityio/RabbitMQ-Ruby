#!/usr/bin/env ruby
require 'bunny'

connection = Bunny.new(hostname: 'rabbitmq', automatically_recover: false)
connection.start

channel = connection.create_channel
queue = channel.queue('hello')

message = ARGV.empty? ? 'Hello World!' : ARGV.join(' ')

queue.publish(message, persistent: true)

puts "[x] Sent #{message}"

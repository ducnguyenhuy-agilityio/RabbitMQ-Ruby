#!/usr/bin/env ruby
require 'bunny'

connection = Bunny.new(hostname: 'rabbitmq', automatically_recover: false)
connection.start

channel = connection.create_channel
queue = channel.queue('hello')

channel.default_exchange.publish('Hello world!', routing_key: queue.name)

puts "[x] Sent 'Hello World!'"

connection.close

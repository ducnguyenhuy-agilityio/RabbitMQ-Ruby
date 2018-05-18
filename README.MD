## Guides how to run these examples

### Part 1: http://www.rabbitmq.com/tutorials/tutorial-one-ruby.html

1. docker-compose up
2. `docker-compose exec app sh` on tab 1 and then enter `ruby receice.rb`
3. `docker-compose exec app sh` on tab 2 and then enter `ruby send.rb`

### Part 2: http://www.rabbitmq.com/tutorials/tutorial-two-ruby.html

1. docker-compose up
2. `docker-compose exec app sh` on tab 1 and then enter `ruby worker.rb`
3. `docker-compose exec app sh` on tab 2 and then enter `ruby worker.rb`
4. `docker-compose exec app sh` on tab 3 and then enter the commands below:
  - `ruby new_task.rb First message.`
  - `ruby new_task.rb Second message..`
  - `ruby new_task.rb Third message...`
  - `ruby new_task.rb Fourth message....`
  - `ruby new_task.rb Fifth message.....`

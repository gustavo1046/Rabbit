# Rabbit

This project was develop with Ruby on rails and docker, communicating with Spree, we have one aplication you can learn how to lead with modern application


To run this project on your machine you will need:

- Spree server (https://docs.spreecommerce.org/api-reference/introduction)
- Rabbit MQ server (https://www.rabbitmq.com/docs/download)
- Ruby installed

steps are:
-run "docker-compose up" from spree application
-run "bin/rails s" to run your spree application on localhost
-run "docker-compose up" from you rails application
-run "rails s" to up your ruby on rails application (the port configurated on localhost is 3010 because port 3000 are in use by Spree for default)

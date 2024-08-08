# Rabbit

Program to apply concepts about microservies, Rabbit is an application that consume data from another services and use rabbit MQ to communicate between them, In this code you have a lot development concepts like good archteture, microservice, token authentication, docker compose.

THis projetc was develop with Ruby on rails and docker, communicating with Spree, we have one aplication you can learn how to lead with modern application


To run this project on your machine you will need:

- Spree server (https://docs.spreecommerce.org/api-reference/introduction)
- Rabbit MQ server (https://www.rabbitmq.com/docs/download)
- Ruby installed

steps are:
-run "docker-compose up" from spree application
-run "bin/rails s" to run your spree application on localhost
-run "docker-compose up" from you rails application
-run "rails s" to up your ruby on rails application (the port configurated on localhost is 3010 because port 3000 are in use by Spree for default)

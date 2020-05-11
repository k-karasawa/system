# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## how to start by docker-compose

``` shell
# build docker image
$ docker-compose build

# running container
$ docker-compsoe up

# create database and migration
$ docker-compose run web bundle exec rails db:create
$ docker-compose run web bundle exec rails db:migrate
```

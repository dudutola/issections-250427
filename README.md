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
# issections-250427

rails db:create
connection to server on socket "/var/run/postgresql/.s.PGSQL.5432" failed: fe_sendauth: no password supplied
Couldn't create 'issections_250427_development' database. Please check your configuration.
bin/rails aborted!
ActiveRecord::ConnectionNotEstablished: connection to server on socket "/var/run/postgresql/.s.PGSQL.5432" failed: fe_sendauth: no password supplied (ActiveRecord::ConnectionNotEstablished)


Caused by:
PG::ConnectionBad: connection to server on socket "/var/run/postgresql/.s.PGSQL.5432" failed: fe_sendauth: no password supplied (PG::ConnectionBad)

Tasks: TOP => db:create
(See full trace by running task with --trace)

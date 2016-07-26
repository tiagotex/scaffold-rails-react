# Sample App

This app is used to bootstrap small project.

It uses a Rails as a JSON API and React for frontend.



### How to start app

Copy .env.example file to .env, update the value for the database url

Create database

    rails db:create db:migrate

Start rails app

    bundle exec rails s

Start react app

    cd client/ && gulp

# README

API usage with curl:
```
curl http://localhost:3000/

curl -X POST http://localhost:3000/posts -d '{"content": "First post"}' -H 'Content-type: application/json'
```

Docker build:
```
docker build -t vitaliel/blog-demo .
docker push vitaliel/blog-demo
```

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

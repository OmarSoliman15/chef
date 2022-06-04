Chef - Backend
===
Chef is a dockerized ruby on rails project that helps users find the most relevant recipes that they can prepare with the ingredients that they have at home.

## Requirements
The project is based on the version `3.0.0` of ruby language and `7.0.0` of ruby on rails,
so make sure that you are satisfying the requirements
listed in the [rails's documentation](https://guides.rubyonrails.org/v5.0/getting_started.html#installing-rails)

## Installation
Run the following commands in order to get a ready to use clone of the application:

1. Clone the repository
```bash
git clone https://github.com/OmarSoliman15/chef
```
2. Get into the directory
```bash
cd chef
```
### Start The Server
3. Run your docker and setup configuration
```bash
docker-compose up --build
docker run -e POSTGRES_PASSWORD=password -e POSTGRES_USER=postgres db
```
Note: you can change db credentials from .env file and it's recommended to put it on .gitignore
4Create the database and seed data i from inside the container ``
```bash
docker exec -ti chef_web_1 bash
rails db:create
rails db:migrate
rails db:seed
```
#### And now we're done !!

### Open The Server
```bash
http://0.0.0.0:3000/
```

###  Data

Seeded data scraped from www.allrecipes.com with [recipe-scrapers](https://github.com/hhursev/recipe-scrapers):
```

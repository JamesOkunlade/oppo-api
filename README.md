# Oppo -  Rails API

## Introduction

This is job listing platforms and saving platforms. The jobs are fetched from Torre.

Specification summary:

- RESTful api.
- Patterns and good practices.
- Setup scripts.
- Postgres database.

## Requirements

- Ruby version 2.6.2

- Rails version 6.0.3

- Postgres

## Installation

- Clone the repository and get inside it:

```
git clone git@github.com:JamesOkunlade/oppo-api.git

cd oppo-api
```

- Install all gems:

```
bundle install
```

- Create a postgres database:

```
rails db:create
```

- Migrate database

```
rails db:migrate
```

- Start the server

```
rails s
```

## Technology Used

- Rails api
- Postgres

### API Endpoints

| API Endpoint                      | Functionality                           |
| ----------------------------------| --------------------------------------- |
| GET /opportunities     | Fetches a list of saved jobs   |
| POST /opportunities  | Saves a new job   |
| DELETE /opportunities/:id     | Deletes a job by Id   |

## Live Version

This is the link to the online version - 
[Oppo]()


## Author

James Okunlade

- [Github profile](https://github.com/JamesOkunlade)
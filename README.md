# Oppo -  Rails API

## Introduction

This is job listing and saving platform. The jobs are fetched from Torre.

P.S The api is built with ActiveJob. The frontend of the app retrieves a list of job opportunities from Torre and you can choose to save any job opportunity. When you click the button to do that, the id of the job opportunity is sent to the rails backend and details of this job opportunity can further be gotten via another endpoint. For the reason, the Rails ActiveJob is been used to make a call to the third party endpoint and it performs the Job of retrieving, updating and saving the job opportunity with the fetched details. This way, the frontend application will not be unhold because you're trying to save a job opportunity whose details you'll have to visit a different endpoint to get. This saved job opportunity is then served back via json to the frontend.

Specification summary:

- RESTful api.
- ActiveJob
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

This is served at - 
[Oppo](https://obscure-castle-68155.herokuapp.com/opportunities)


## Author

James Okunlade

- [Github profile](https://github.com/JamesOkunlade)
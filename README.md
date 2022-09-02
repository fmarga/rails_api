<h1 align="center">Workout API</h1>

## Description

This is a fake Workout API, just to study a little bit about rails API only

> Project status: in develpment :warning:

- Checklist of improvements incoming:
  - Add endpoints for Level
  - Add tests
  - Improve documentation

## Stacks

- [Ruby](https://www.ruby-lang.org/en/) 3.0.0

## Dependencies

- [Rails](https://rubyonrails.org/) 7.0.3.1
- [RSpec](https://github.com/rspec/rspec-rails) 5.1
- [Faker](https://github.com/faker-ruby/faker)

## Database creation

```
  rails dev:setup seed:basic
```

## Endpoints

**<h3 align="center">Workout</h3>**

#### **GET /v1/workouts**

```json
[
  {
    "id": 1,
    "expires": "2022-10-02",
    "level_id": 2
  }
]
```

#### **GET /v1/workouts/:id**

```json
{
  "id": 1,
  "expires": "2022-10-02",
  "level_id": 2
}
```

**<h3 align="center">Activities</h3>**

#### **GET /v1/activities**

```json
[
  {
    "id": 1,
    "name": "Lunges",
    "series": 2,
    "repeat": 6,
    "weight": 10,
    "workout_id": 1
  },
  {
    "id": 2,
    "name": "Pushups",
    "series": 2,
    "repeat": 1,
    "weight": 5,
    "workout_id": 1
  }
]
```

#### **GET /v1/activities/:id**

```json
{
  "id": 2,
  "name": "Pushups",
  "series": 2,
  "repeat": 1,
  "weight": 5,
  "workout_id": 1
}
```

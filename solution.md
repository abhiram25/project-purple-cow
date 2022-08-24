Setup

1. If you have not already, please install Docker

https://www.docker.com/

2. Please run docker

3. Clone the repositiory

4. Navigate to the purple-project-cow directory

5. Run docker compose up --build

Future features

- Validate empty string for name
- Create multiple records at once

If you want to test the routes

- Download postman and put following as Request type and URL

  Getting items
  GET http://0.0.0.0:3000/items

  Adding a new item

  POST http://0.0.0.0:3000/items

  Body:

  {
    "name": "Your input here"
  }

  Updating item

  PUT http://0.0.0.0:3000/items/:id

  Note: you can append any id you want

  Id must be an integer

  Body:

  {
    "name": "Your input here"
  }

  Delete all

  DELETE http://0.0.0.0:3000/items

  Delete a single item

  http://0.0.0.0:3000/items/:id

  Id must be an integer

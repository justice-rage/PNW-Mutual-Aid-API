# PNW-Mutual-Aid-API

#### Ruby on Rails - Building an API for Team Week! 
##### Exercising our skills in building API endpoints, adding routes, concerns, modules, handling exceptions and adding success messages. Passing parameters into a GET route, utilizing FactoryBot for thorough unit testing of the Rails API. Providing CRUD functionality with proper documentation.

#### By Justice Douglas, Rosie Gardner, Rob Sameh & Hans J. Schroeder

## Technologies Used

* Ruby
* Rails
* Active Record
* Postgres
* Gem
* Faker
* Pry
* Rspec
* Will_Paginate
* Shoulda-Matchers
* SimpleCov
* FactoryBot
* Rswag


## Setup/Installation Requirements

* https://github.com/justicepelteir/PNW-Mutual-Aid-API.git
* Clone or download this repository onto your desktop
* Navigate to the top-level of directory
* Open VScode or preferred text editor.
* CD into root directory
* Open terminal, run: 
* `bundle install` 
* `rake db:setup` to create, migrate, and seed database.
* You can import our test data with the following command:
* `psql pnw-mutual-aid-api_development < databse_backup.sql`
* `rails s` to run server 
* Open Postman or preferred API development platform:
* `http://localhost:3000/`
* Open your web browser to view the interactive documentation:
* `http://localhost:3000/api-docs/index.html`

## API Endpoints


| Method |   URL  | Result | HTTP Status |
| :---   | :----: |  :-----: | ---: |
| GET    | `localhost:3000/resources` | Returns a list of all resources in alphabetical order by name and their parameters => `id`, `name`, `website`, `category`, `address` | 200 |
| GET    | `localhost:3000/resources/6` | Returns all information related to Resource with `id=6` | 200 |
| GET    | `localhost:3000/resources?name=Mis` | Returns a Resource by `name` or `name ilike?` => 'Misty' | 200 |
| GET    | `localhost:3000/resources?page=4` | Returns a list of 10 Resources per page | 200 |
| POST   | `localhost:3000/resources?name=test&category=post&website=please&address=ignore` | Adds a Resource to the database => `name: test`, `category: post`, `website: please`, `address: ignore` => If `POST` is successful, returns database object for newly created Resource. | 201 |
| PUT/PATCH | `localhost:3000/resources/183?name=PDX Cares` | Updates the name for a Resource with `id=183`. If PUT/PATCH is successful, returns database object for newly updated Resource. | 200 |
| DELETE | `localhost:3000/resources/183` | Deletes the Resource with `id=183` from database | 200 |


## Known Bugs

* NO KNOWN BUGS

## License

MIT

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Copyright (c) 2022 Justice Douglas, Email: <justice.douglas@hey.com>; Rosie Gardner, Email: <rosiegardner78@gmail.com>; Rob Sameh, Email: <rob.sameh@gmail.com>; Hans J. Schroeder, Email: <hajschroeder@gmail.com>

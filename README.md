# Animal Shelter API
_This is an API database, containing data about animal shelters and the animals that belong to them. It uses Ruby, Rails and SQL_
By Dylan Manley

## Setup Instructions

* Open your termial
* Enter "git clone https://github.com/dylan12manley/animal_shelter_api.git" in the terminal
* Enter "cd animal_shelter_api" in the terminal
* Enter "bundle" in the terminal
* Enter "rake db:create" in the terminal
* Enter "rake db:migrate" in the terminal
* Enter "rails s" in the terminal
* Api is now up and running!

## Endpoints 

#### Get
* localhost:3000/shelters (returns all shelters)
* localhost:3000/shelters/:shelter_id (returns shelter with corresponding ID")
* localhost:3000/shelters/:shelter_id/animals (returns all animals with corresponding shelter_id")
* localhost:3000/shelters/:shelter_id/animals/:id (returns specified animal based on ID)

#### DELETE
* localhost:3000/shelters/:shelter_id (deletes shelter with corresponding id)
* localhost:3000/shelters/:shelter_id/animals/:id (deletes animal with corresponding id)

#### POST
* localhost:3000/shelters (adds shelter to database)
* localhost:3000/shelters/:shelter_id/animals (adds animal to database)

#### PUT
* localhost:3000/shelters/:shelter_id (updates a shelter's parameters)
* localhost:3000/shelters/:shelter_id/animals/:id (updates an animal's parameters)

## Support and contact details
_Any questions, comments or contributions please contact Dylan Manley (dylan.manley@gmail.com)_

## Technologies Used
Ruby, Rails, Postgres, SQL, HTML, CSS

## License
*The MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*

Copyright (c) 2020 Dylan Manley

dylan.manley@gmail.com

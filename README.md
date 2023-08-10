API VISION

Description
ApiVision is an API aimed at providing a service of endpoints via JSON objects developed on Ruby on Rails 7. 
It consists of movies and seasons (along with their respective episodes). 
Users will be able to view content, make purchases, and access them in their library.

Starting
To get started, clone the repository to your local environment and run the command 'rails db:migrate.'
Sample data is available in db/seeds.rb. If you want to work with it, execute the 'rails db:seed' command,
but feel free to make any modifications you need.

http://localhost:3000/movies

How to Use:
You can view the endpoints from your web browser.

* To view the collection of movies, go to: http://localhost:3000/movies
* To view the collection of TV shows, go to: http://localhost:3000/seasons
* To view a movie in detail, enter its ID: http://localhost:3000/movies/:id (example: http://localhost:3000/movies/1)
* To view a TV show in detail, enter its ID: http://localhost:3000/seasons/:id (example: http://localhost:3000/seasons/1)
* To see all purchase options, visit: http://localhost:3000/purchase_options
* To access the user's library, go to: http://localhost:3000/users/:id/libraries (example: http://localhost:3000/users/1/libraries)

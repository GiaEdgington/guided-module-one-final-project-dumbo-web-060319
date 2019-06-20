require "pry"

class Location < ActiveRecord::Base
    has_many :movie_scenes
    has_many :movies, through: :movie_scenes

    def self.list_movies_for_city(city_name)
       user_location = Location.where(city: city_name)
       location_movies = []
       user_location.map do  |location|
           location_movies << location.movies[0].title
       end
       location_movies.uniq
   end
  
end
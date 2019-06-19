class Movie < ActiveRecord::Base
    has_many :movie_scenes
    #has_many :locations, through: :movie_scenes 
    #has_many :itinerary_movie_scenes 
    #has_many :itineraries, through: :itinerary_movie_scenes
end
class Itinerary < ActiveRecord::Base
    belongs_to :user
    has_many :itinerary_movie_scenes
    #above are the minimum relationships for the record
    #------
    #below join between itinerary and movie_scene through itinerary_movie_scenes
    has_many :movie_scenes, through: :itinerary_movie_scenes
end
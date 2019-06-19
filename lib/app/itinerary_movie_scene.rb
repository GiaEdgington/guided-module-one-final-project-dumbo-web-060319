class ItineraryMovieScene < ActiveRecord::Base
    belongs_to :itinerary
    belongs_to :movie_scene
end
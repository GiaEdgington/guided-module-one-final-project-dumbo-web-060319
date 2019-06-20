class MovieScene < ActiveRecord::Base
    belongs_to :movie
    belongs_to :location
    has_many :itinerary_movie_scenes

end
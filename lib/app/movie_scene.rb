class MovieScene < ActiveRecord::Base
    belongs_to :movie
    belongs_to :location
    has_many :itinarary_movie_scenes
end
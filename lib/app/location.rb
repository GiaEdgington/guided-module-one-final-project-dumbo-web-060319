class Location < ActiveRecord::Base
    has_many :movie_scenes
end
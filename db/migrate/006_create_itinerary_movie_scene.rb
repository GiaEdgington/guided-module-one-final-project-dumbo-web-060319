class CreateItineraryMovieScene < ActiveRecord::Migration
    def change
        create_table :itinerary_movie_scenes do |t|
            t.integer :itinerary_id
            t.integer :movie_scene_id
        end
    end
end
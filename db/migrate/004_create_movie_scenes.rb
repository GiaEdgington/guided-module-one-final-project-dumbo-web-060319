class CreateMovieScenes < ActiveRecord::Migration
    create_table :movie_scenes do |t|
        t.string :scene_description
        t.integer :movie_id
        t.integer :location_id
    end
end
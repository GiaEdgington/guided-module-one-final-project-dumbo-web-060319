class CreateItineraries < ActiveRecord::Migration
    def change
        create_table :itineraries do |t|
            t.integer :user_id
            t.string :itinerary_name
        end
    end
end
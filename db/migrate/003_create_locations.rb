class CreateLocations < ActiveRecord::Migration
    #location can be extended later to include city, state, etc.
    def change
        create_table :locations do |t|
            t.string :location_title
            t.string :location_address
        end
    end
end
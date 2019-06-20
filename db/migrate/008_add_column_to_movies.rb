class AddColumnToMovies < ActiveRecord::Migration 
    def change
        add_column :movies, :city, :string
    end

end
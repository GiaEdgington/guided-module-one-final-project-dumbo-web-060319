class User < ActiveRecord::Base
    has_many :itineraries
    has_many :itinerary_movie_scenes, through: :itineraries

    def create_itinerary(title)
        Itinerary.create(user_id: self.id, itinerary_name: title)
    end

end
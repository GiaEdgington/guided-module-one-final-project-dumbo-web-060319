class Itinerary < ActiveRecord::Base
    belongs_to :user
    has_many :itinerary_movie_scenes
    #above are the minimum relationships for the record
    #------
    #below join between itinerary and movie_scene through itinerary_movie_scenes
    has_many :movie_scenes, through: :itinerary_movie_scenes



    def create_itinerary_from_movie_scene(movie_scene)
        ItineraryMovieScene.create(itinerary_id: self.id, movie_scene_id: movie_scene.id)
    end
end
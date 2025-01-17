# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 7) do

  create_table "itineraries", force: :cascade do |t|
    t.integer "user_id"
    t.string  "itinerary_name"
  end

  create_table "itinerary_movie_scenes", force: :cascade do |t|
    t.integer "itinerary_id"
    t.integer "movie_scene_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "location_title"
    t.string "location_address"
    t.string "city"
  end

  create_table "movie_scenes", force: :cascade do |t|
    t.string  "scene_description"
    t.integer "movie_id"
    t.integer "location_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end

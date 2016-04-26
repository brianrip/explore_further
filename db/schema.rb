# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160425210700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.integer  "activity_id"
    t.string   "name"
    t.string   "location_city"
    t.string   "location_state"
    t.string   "activity_type"
    t.integer  "kudos_count"
    t.float    "max_speed"
    t.float    "distance"
    t.integer  "moving_time"
    t.float    "total_elevation_gain"
    t.datetime "start_date_local"
    t.integer  "achievement_count"
    t.float    "start_latitude"
    t.float    "start_longitude"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "athlete_id"
    t.string   "polyline"
    t.string   "slug"
  end

  create_table "athletes", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "profile"
    t.string   "email"
    t.string   "uid"
    t.string   "token"
  end

  create_table "crags", force: :cascade do |t|
    t.integer  "cid"
    t.string   "name"
    t.integer  "route_quantity"
    t.string   "climbing_styles"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "activity_id"
  end

  add_foreign_key "crags", "activities"
end

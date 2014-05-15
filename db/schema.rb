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

ActiveRecord::Schema.define(version: 20140515213954) do

  create_table "airports", force: true do |t|
    t.text     "code",       limit: 3,  null: false
    t.text     "name",       limit: 75, null: false
    t.text     "city",       limit: 50, null: false
    t.text     "state",      limit: 3
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "wac"
    t.text     "notes"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "airports", ["country_id"], name: "index_airports_on_country_id"

end

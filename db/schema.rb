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

ActiveRecord::Schema.define(version: 20140520083254) do

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

  create_table "countries", force: true do |t|
    t.text     "alpha3",                 limit: 3,  null: false
    t.text     "alpha2",                 limit: 2
    t.text     "iso_name",               limit: 75, null: false
    t.text     "srs_name",               limit: 75
    t.text     "global_region",          limit: 25
    t.text     "european_route_markets", limit: 25
    t.boolean  "eu_member"
    t.boolean  "oecd_member"
    t.boolean  "un_member"
    t.text     "economy",                limit: 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.text     "name"
    t.text     "client"
    t.integer  "airport_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["airport_id"], name: "index_projects_on_airport_id"

  create_table "regions", force: true do |t|
    t.text     "region_code", limit: 3,  null: false
    t.text     "name",        limit: 25, null: false
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "regions", ["country_id"], name: "index_regions_on_country_id"

  create_table "scenarios", force: true do |t|
    t.text     "name",                  null: false
    t.integer  "base_year",             null: false
    t.float    "dom_on_dom",            null: false
    t.float    "dom_on_int",            null: false
    t.float    "min_r2",                null: false
    t.float    "el_dom_developed",      null: false
    t.float    "el_short_developed",    null: false
    t.float    "el_medium_developed",   null: false
    t.float    "el_long_developed",     null: false
    t.float    "el_ultra_developed",    null: false
    t.float    "el_short_developing",   null: false
    t.float    "el_medium_developing",  null: false
    t.float    "el_long_developing",    null: false
    t.float    "el_ultra_developing",   null: false
    t.integer  "sat_dom_developed",     null: false
    t.integer  "sat_short_developed",   null: false
    t.integer  "sat_medium_developed",  null: false
    t.integer  "sat_long_developed",    null: false
    t.integer  "sat_ultra_developed",   null: false
    t.integer  "sat_short_developing",  null: false
    t.integer  "sat_medium_developing", null: false
    t.integer  "sat_long_developing",   null: false
    t.integer  "sat_ultra_developing",  null: false
    t.float    "optimal_load_factor"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scenarios", ["project_id"], name: "index_scenarios_on_project_id"

  create_table "users", force: true do |t|
    t.text     "name",            null: false
    t.boolean  "admin"
    t.string   "password_digest", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

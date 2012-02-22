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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120222080113) do

  create_table "buildings_level_defensive_stats", :force => true do |t|
    t.integer  "armor_points",                     :null => false
    t.integer  "health_points",                    :null => false
    t.integer  "armor_type",                       :null => false
    t.boolean  "is_reinforced", :default => false
    t.integer  "level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buildings_level_offensive_stats", :force => true do |t|
    t.integer  "damage",          :null => false
    t.integer  "speed",           :null => false
    t.integer  "range",           :null => false
    t.integer  "radius"
    t.string   "status_modifier"
    t.integer  "level_id",        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buildings_levels", :force => true do |t|
    t.integer  "level",                                       :null => false
    t.integer  "building_id",                                 :null => false
    t.string   "level_skin",                                  :null => false
    t.decimal  "build_time",  :precision => 15, :scale => 10, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "buldings", :force => true do |t|
    t.string   "name",                             :null => false
    t.string   "description",                      :null => false
    t.string   "building_type",                    :null => false
    t.boolean  "is_attackable", :default => false
    t.integer  "faction_id",                       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "factions", :force => true do |t|
    t.string   "faction_name",        :null => false
    t.text     "faction_description", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", :force => true do |t|
    t.string   "name",        :null => false
    t.string   "description", :null => false
    t.string   "unit_type",   :null => false
    t.integer  "faction_id",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units_level_base_unit_stats", :force => true do |t|
    t.decimal  "movement_speed", :precision => 15, :scale => 10, :default => 0.0
    t.decimal  "health_points",  :precision => 15, :scale => 10, :default => 0.0
    t.decimal  "build_time",     :precision => 15, :scale => 10,                  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units_levels", :force => true do |t|
    t.integer  "level",       :null => false
    t.integer  "building_id", :null => false
    t.string   "level_skin",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

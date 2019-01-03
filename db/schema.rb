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

ActiveRecord::Schema.define(version: 2018_12_13_142632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fetch_data", force: :cascade do |t|
  end

  create_table "missions", force: :cascade do |t|
    t.text "mission_name"
    t.text "mission_id"
    t.text "wikipedia"
    t.text "website"
    t.text "twitter"
    t.text "description"
  end

  create_table "nationalities", force: :cascade do |t|
    t.text "name"
    t.index ["name"], name: "nationalities_name_key", unique: true
  end

  create_table "payloads", force: :cascade do |t|
    t.text "payload_id"
    t.boolean "reused"
    t.text "manufacturer"
    t.text "payload_type"
    t.float "payload_mass_kg"
    t.float "payload_mass_lbs"
    t.text "orbit"
    t.bigint "mission_id"
    t.bigint "nationality_id"
    t.index ["mission_id"], name: "index_payloads_on_mission_id"
    t.index ["nationality_id"], name: "index_payloads_on_nationality_id"
  end

  add_foreign_key "payloads", "missions"
  add_foreign_key "payloads", "nationalities"
end

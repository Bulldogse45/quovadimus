# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_03_31_170903) do
  create_table "attendances", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "event_id", null: false
    t.integer "person_id", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_attendances_on_event_id"
    t.index ["person_id"], name: "index_attendances_on_person_id"
  end

  create_table "events", force: :cascade do |t|
    t.boolean "attending"
    t.datetime "created_at", null: false
    t.string "location"
    t.string "name"
    t.datetime "time"
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.text "address"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.text "notes"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "attendances", "events"
  add_foreign_key "attendances", "people"
end

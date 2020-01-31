# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_31_173112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.string "breed"
    t.string "sex"
    t.integer "age"
    t.string "status"
    t.integer "shelter_id"
  end

  create_table "shelters", force: :cascade do |t|
    t.string "shelter_name"
    t.string "city"
    t.string "state"
    t.string "address"
    t.integer "phone_number"
  end

  add_foreign_key "animals", "shelters"
end

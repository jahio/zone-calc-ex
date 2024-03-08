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

ActiveRecord::Schema[7.1].define(version: 2024_03_07_054300) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applicants", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_applicants_on_email"
    t.index ["name"], name: "index_applicants_on_name"
    t.index ["phone"], name: "index_applicants_on_phone"
  end

  create_table "lot_uses", force: :cascade do |t|
    t.string "use_type"
    t.string "description"
    t.string "tax_code"
    t.string "unit_of_measure"
    t.decimal "tax_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tax_code"], name: "index_lot_uses_on_tax_code"
    t.index ["tax_rate"], name: "index_lot_uses_on_tax_rate"
    t.index ["unit_of_measure"], name: "index_lot_uses_on_unit_of_measure"
    t.index ["use_type"], name: "index_lot_uses_on_use_type"
  end

  create_table "lots", force: :cascade do |t|
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.decimal "latitude"
    t.decimal "longitude"
    t.decimal "width", null: false
    t.decimal "height", null: false
    t.string "unit_of_measure", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address", "city", "state", "zip", "latitude", "longitude"], name: "idx_on_address_city_state_zip_latitude_longitude_c185106acd", unique: true
    t.index ["address"], name: "index_lots_on_address"
    t.index ["city"], name: "index_lots_on_city"
    t.index ["height"], name: "index_lots_on_height"
    t.index ["latitude", "longitude"], name: "index_lots_on_latitude_and_longitude", unique: true
    t.index ["latitude"], name: "index_lots_on_latitude"
    t.index ["longitude"], name: "index_lots_on_longitude"
    t.index ["state"], name: "index_lots_on_state"
    t.index ["unit_of_measure"], name: "index_lots_on_unit_of_measure"
    t.index ["width"], name: "index_lots_on_width"
    t.index ["zip"], name: "index_lots_on_zip"
  end

end

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

ActiveRecord::Schema.define(version: 2021_12_10_220811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "protests", force: :cascade do |t|
    t.text "description"
    t.string "location"
    t.string "contact_organization"
    t.string "contact_name"
    t.string "contact_phone"
    t.integer "present"
    t.string "num_in_series"
    t.boolean "is_repeated"
    t.string "kind"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

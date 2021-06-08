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

ActiveRecord::Schema.define(version: 2021_06_08_133406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artefacts", force: :cascade do |t|
    t.string "name"
    t.date "origin_year"
    t.string "origin_location"
    t.string "current_location"
    t.string "context"
    t.string "made_by"
    t.string "material"
    t.string "registration_num"
    t.bigint "collection_id", null: false
    t.bigint "museum_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["collection_id"], name: "index_artefacts_on_collection_id"
    t.index ["museum_id"], name: "index_artefacts_on_museum_id"
  end

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.string "period"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.date "date"
    t.text "description"
    t.bigint "artefact_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artefact_id"], name: "index_events_on_artefact_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "artefact_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artefact_id"], name: "index_favorites_on_artefact_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "museums", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.index ["user_id"], name: "index_submissions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "artefacts", "collections"
  add_foreign_key "artefacts", "museums"
  add_foreign_key "events", "artefacts"
  add_foreign_key "favorites", "artefacts"
  add_foreign_key "favorites", "users"
  add_foreign_key "submissions", "users"
end

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

ActiveRecord::Schema.define(version: 2020_10_14_160748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clothe_ensembles", force: :cascade do |t|
    t.bigint "clothe_id", null: false
    t.bigint "ensemble_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clothe_id"], name: "index_clothe_ensembles_on_clothe_id"
    t.index ["ensemble_id"], name: "index_clothe_ensembles_on_ensemble_id"
  end

  create_table "clothes", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "weather"
    t.integer "temperature"
    t.string "tag"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_clothes_on_user_id"
  end

  create_table "ensembles", force: :cascade do |t|
    t.string "weather"
    t.integer "temperature"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_ensembles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clothe_ensembles", "clothes"
  add_foreign_key "clothe_ensembles", "ensembles"
  add_foreign_key "clothes", "users"
  add_foreign_key "ensembles", "users"
end

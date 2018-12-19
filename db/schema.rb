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

ActiveRecord::Schema.define(version: 2018_12_16_160723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidacies", force: :cascade do |t|
    t.bigint "jobseeker_id"
    t.bigint "offer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jobseeker_id"], name: "index_candidacies_on_jobseeker_id"
    t.index ["offer_id"], name: "index_candidacies_on_offer_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "sector"
    t.text "description"
    t.string "place"
    t.string "siret"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_companies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true
  end

  create_table "jobseekers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "genre"
    t.string "address"
    t.string "phone_number"
    t.string "profession"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_jobseekers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_jobseekers_on_reset_password_token", unique: true
  end

  create_table "offers", force: :cascade do |t|
    t.boolean "job"
    t.string "required_profile"
    t.datetime "date_start"
    t.string "formation_name"
    t.text "formation_description"
    t.string "degree"
    t.integer "price"
    t.string "job_name"
    t.text "job_description"
    t.string "contract"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_offers_on_company_id"
  end

  add_foreign_key "candidacies", "jobseekers"
  add_foreign_key "candidacies", "offers"
  add_foreign_key "offers", "companies"
end

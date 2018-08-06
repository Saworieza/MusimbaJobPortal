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

ActiveRecord::Schema.define(version: 20161221151929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.string   "exp_years"
    t.string   "industry"
    t.string   "qualification"
    t.integer  "sal_expectation"
    t.string   "currency"
    t.string   "work_type"
    t.string   "availability"
    t.integer  "location_id"
    t.integer  "job_category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "town_id"
    t.integer  "user_id"
  end

  create_table "awards", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "cert_file_name"
    t.string   "cert_content_type"
    t.integer  "cert_file_size"
    t.datetime "cert_updated_at"
    t.integer  "user_id"
  end

  create_table "branches", force: :cascade do |t|
    t.string   "branch_name"
    t.string   "contact_person"
    t.string   "role"
    t.string   "box_number"
    t.string   "size"
    t.string   "phone"
    t.string   "email"
    t.string   "building"
    t.string   "street"
    t.integer  "company_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "employer_id"
    t.index ["company_id"], name: "index_branches_on_company_id", using: :btree
  end

  create_table "categorizations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "job_category_id"
    t.integer  "preference_id"
    t.integer  "town_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type", using: :btree
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "industry"
    t.string   "nssf"
    t.string   "nhif"
    t.string   "kra_pin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "constituencies", force: :cascade do |t|
    t.string   "name"
    t.integer  "county_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["county_id"], name: "index_constituencies_on_county_id", using: :btree
  end

  create_table "contacs", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "counties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "constituency_id"
    t.integer  "user_id"
  end

  create_table "divisions", force: :cascade do |t|
    t.string   "name"
    t.integer  "district_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.index ["district_id"], name: "index_divisions_on_district_id", using: :btree
  end

  create_table "educations", force: :cascade do |t|
    t.string   "institution"
    t.string   "level"
    t.string   "years"
    t.text     "details"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  create_table "employers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "business_name"
    t.string   "office_line"
    t.string   "industry"
    t.date     "date_founded"
    t.string   "box"
    t.integer  "county_id"
    t.integer  "constituency_id"
    t.integer  "ward_id"
    t.integer  "town_id"
    t.string   "building"
    t.string   "street"
    t.string   "kra_pin"
    t.string   "nhif_number"
    t.string   "nssf_number"
    t.string   "website"
    t.integer  "phone"
    t.string   "skype"
    t.string   "twitter"
    t.string   "gplus"
    t.string   "linkedin"
    t.integer  "branch_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_employers_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_employers_on_reset_password_token", unique: true, using: :btree
  end

  create_table "job_alerts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.integer  "preference_id"
    t.integer  "categorizations_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.date     "closes_on"
    t.text     "details"
    t.integer  "salary_from"
    t.integer  "salary_to"
    t.string   "type"
    t.text     "responsibilities"
    t.text     "qualifications"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.integer  "job_category_id"
    t.integer  "county_id"
    t.integer  "district_id"
    t.integer  "constituency_id"
    t.integer  "division_id"
    t.integer  "ward_id"
    t.integer  "location_id"
    t.integer  "sublocation_id"
    t.integer  "village_id"
    t.integer  "town_id"
    t.string   "status"
    t.integer  "user_id"
    t.integer  "employer_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.integer  "division_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "constituency_id"
    t.integer  "user_id"
    t.index ["division_id"], name: "index_locations_on_division_id", using: :btree
  end

  create_table "preferences", force: :cascade do |t|
    t.integer  "job_category_id"
    t.string   "qualification"
    t.string   "town_id"
    t.string   "job_type"
    t.string   "availability"
    t.string   "denomination"
    t.integer  "salary"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "categorizations_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "client"
    t.date     "date_completed"
    t.integer  "contribution"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
  end

  create_table "references", force: :cascade do |t|
    t.string   "name"
    t.string   "company"
    t.string   "position"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "searches", force: :cascade do |t|
    t.integer  "job_category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "town_id"
  end

  create_table "sublocations", force: :cascade do |t|
    t.string   "name"
    t.integer  "ward_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.index ["location_id"], name: "index_sublocations_on_location_id", using: :btree
    t.index ["ward_id"], name: "index_sublocations_on_ward_id", using: :btree
  end

  create_table "towns", force: :cascade do |t|
    t.string   "name"
    t.integer  "county_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.integer  "preference_id"
    t.integer  "categorizations_id"
    t.index ["county_id"], name: "index_towns_on_county_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                    default: "", null: false
    t.string   "encrypted_password",       default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",            default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "first_name"
    t.string   "second_name"
    t.string   "last_name"
    t.string   "website"
    t.integer  "phone"
    t.string   "skype"
    t.string   "twitter"
    t.string   "gplus"
    t.string   "linkedin"
    t.string   "id_number"
    t.string   "position"
    t.string   "marital_status"
    t.string   "gender"
    t.text     "bio"
    t.date     "date_of_birth"
    t.integer  "job_category_id"
    t.integer  "education_id"
    t.integer  "work_id"
    t.integer  "reference_id"
    t.integer  "project_id"
    t.integer  "award_id"
    t.integer  "county_id"
    t.integer  "district_id"
    t.integer  "constituency_id"
    t.integer  "division_id"
    t.integer  "ward_id"
    t.integer  "location_id"
    t.integer  "sublocation_id"
    t.integer  "village_id"
    t.integer  "town_id"
    t.text     "physical_address"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
    t.string   "coverletter_file_name"
    t.string   "coverletter_content_type"
    t.integer  "coverletter_file_size"
    t.datetime "coverletter_updated_at"
    t.string   "kcpe_file_name"
    t.string   "kcpe_content_type"
    t.integer  "kcpe_file_size"
    t.datetime "kcpe_updated_at"
    t.string   "kcse_file_name"
    t.string   "kcse_content_type"
    t.integer  "kcse_file_size"
    t.datetime "kcse_updated_at"
    t.string   "idfront_file_name"
    t.string   "idfront_content_type"
    t.integer  "idfront_file_size"
    t.datetime "idfront_updated_at"
    t.string   "idback_file_name"
    t.string   "idback_content_type"
    t.integer  "idback_file_size"
    t.datetime "idback_updated_at"
    t.integer  "preference_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "villages", force: :cascade do |t|
    t.string   "name"
    t.integer  "sublocation_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.index ["sublocation_id"], name: "index_villages_on_sublocation_id", using: :btree
  end

  create_table "votes", force: :cascade do |t|
    t.string   "votable_type"
    t.integer  "votable_id"
    t.string   "voter_type"
    t.integer  "voter_id"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree
  end

  create_table "wards", force: :cascade do |t|
    t.string   "name"
    t.integer  "division_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "constituency_id"
    t.integer  "user_id"
    t.index ["division_id"], name: "index_wards_on_division_id", using: :btree
  end

  create_table "works", force: :cascade do |t|
    t.string   "name"
    t.string   "position"
    t.string   "years"
    t.string   "location"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_foreign_key "branches", "companies"
  add_foreign_key "constituencies", "counties"
  add_foreign_key "divisions", "districts"
  add_foreign_key "locations", "divisions"
  add_foreign_key "sublocations", "locations"
  add_foreign_key "sublocations", "wards"
  add_foreign_key "towns", "counties"
  add_foreign_key "villages", "sublocations"
  add_foreign_key "wards", "divisions"
end

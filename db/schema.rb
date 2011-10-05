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

ActiveRecord::Schema.define(:version => 20111004114849) do

  create_table "diseases", :force => true do |t|
    t.string   "name"
    t.string   "scientific_name"
    t.string   "video"
    t.text     "introduction"
    t.text     "infection_mechanism"
    t.text     "prevention"
    t.text     "screening_test"
    t.text     "treatment"
    t.integer  "severity_rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "microbes"
    t.string   "severity"
    t.boolean  "IsCurable"
    t.boolean  "IsSymptoms"
    t.boolean  "IsCondom"
  end

  create_table "districts", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "county"
    t.integer  "number"
    t.string   "street"
    t.string   "addresscity"
    t.string   "address2"
    t.string   "state"
    t.integer  "zip"
    t.string   "phone"
    t.string   "fax"
    t.string   "url"
    t.integer  "rating"
    t.integer  "student_count"
    t.integer  "elementary_school_count"
    t.integer  "middle_school_count"
    t.integer  "high_school_count"
    t.integer  "other_school_count"
    t.decimal  "budget"
    t.decimal  "budget_per_pupil"
    t.decimal  "budget_per_pupil_state"
    t.integer  "enrollment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.string   "street"
    t.string   "adresscity"
    t.string   "adress2"
    t.string   "state"
    t.integer  "zip"
    t.string   "phone"
    t.string   "fax"
    t.string   "url"
    t.string   "type"
    t.string   "fund"
    t.string   "grades"
    t.integer  "student_count"
    t.integer  "district_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end

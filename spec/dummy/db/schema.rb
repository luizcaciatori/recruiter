# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140618165802) do

  create_table "recruiter_cities", force: true do |t|
    t.string   "name"
    t.string   "short"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recruiter_cities", ["state_id"], name: "index_recruiter_cities_on_state_id"

  create_table "recruiter_jobs", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "how_to_apply"
    t.integer  "user_id"
    t.integer  "city_id"
    t.boolean  "open",         default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recruiter_jobs", ["city_id"], name: "index_recruiter_jobs_on_city_id"
  add_index "recruiter_jobs", ["user_id"], name: "index_recruiter_jobs_on_user_id"

  create_table "recruiter_states", force: true do |t|
    t.string   "name"
    t.string   "short"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recruiter_states", ["name"], name: "index_recruiter_states_on_name", unique: true

  create_table "recruiter_users", force: true do |t|
    t.string   "email"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.text     "provider_data"
    t.string   "name"
  end

  add_index "recruiter_users", ["provider", "uid"], name: "index_recruiter_users_on_provider_and_uid", unique: true

end

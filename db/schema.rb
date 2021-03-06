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

ActiveRecord::Schema.define(version: 20150311130944) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uid",                    default: "", null: false
    t.string   "provider",               default: "", null: false
    t.string   "name"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "horse_races", force: true do |t|
    t.integer  "horse_id",      null: false
    t.integer  "race_id",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "jockey"
    t.string   "basis_weight"
    t.integer  "horse_number"
    t.float    "popularity"
    t.integer  "order"
    t.integer  "time"
    t.float    "margin"
    t.float    "three_furlong"
    t.integer  "weight"
    t.integer  "weight_gap"
    t.integer  "reward"
  end

  add_index "horse_races", ["horse_id"], name: "index_horse_races_on_horse_id", using: :btree
  add_index "horse_races", ["race_id"], name: "index_horse_races_on_race_id", using: :btree

  create_table "horses", force: true do |t|
    t.string   "name"
    t.string   "gender"
    t.integer  "age"
    t.string   "status"
    t.string   "stable"
    t.string   "father"
    t.string   "mother"
    t.string   "grandfather"
    t.integer  "reward"
    t.integer  "reward2"
    t.string   "records"
    t.string   "owner"
    t.string   "producer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  create_table "races", force: true do |t|
    t.date     "date"
    t.string   "name"
    t.string   "meeting"
    t.string   "distance"
    t.string   "track_condition"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "race_id"
  end

  create_table "user_horses", force: true do |t|
    t.integer  "user_id"
    t.integer  "blood_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "id_num"
    t.string   "pass"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

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

ActiveRecord::Schema.define(version: 20140725061932) do

  create_table "companies", force: true do |t|
    t.string   "title"
    t.string   "phone"
    t.string   "phone_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.string   "phone"
    t.string   "phone_code"
    t.string   "status",     default: "pending"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "customers", ["user_id"], name: "index_customers_on_user_id"

  create_table "events", force: true do |t|
    t.date     "date"
    t.string   "comment"
    t.string   "kind"
    t.string   "status"
    t.integer  "user_id"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["customer_id"], name: "index_events_on_customer_id"
  add_index "events", ["user_id"], name: "index_events_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "phone"
    t.string   "phone_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id"

end

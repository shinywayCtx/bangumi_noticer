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

ActiveRecord::Schema.define(version: 20151201164202) do

  create_table "subscriptions", force: :cascade do |t|
    t.string   "name"
    t.string   "rule"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subscriptions", ["name"], name: "index_subscriptions_on_name", unique: true

  create_table "subscriptions_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "subscription_id"
  end

  add_index "subscriptions_users", ["user_id", "subscription_id"], name: "index_subscriptions_users_on_user_id_and_subscription_id", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "mobile_phone"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["name"], name: "index_users_on_name", unique: true

end

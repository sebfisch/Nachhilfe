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

ActiveRecord::Schema.define(version: 3) do

  create_table "appointments", force: true do |t|
    t.boolean "is_agreed"
    t.boolean "is_positive"
    t.integer "user_id"
    t.integer "offer_id"
  end

  create_table "demands", force: true do |t|
    t.string  "subject"
    t.integer "class_level"
    t.integer "user_id"
  end

  create_table "offers", force: true do |t|
    t.string  "subject"
    t.integer "class_level"
    t.float   "pay"
    t.text    "info"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string  "name"
    t.integer "class_level"
    t.string  "contact_info"
    t.string  "image_link"
    t.date    "last_activity"
    t.boolean "is_admin"
    t.string  "password_digest"
  end

  add_index "users", ["name"], name: "index_users_on_name", unique: true

end

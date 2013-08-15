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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130814154227) do

  create_table "classes", :force => true do |t|
    t.string   "title"
    t.text     "desription"
    t.text     "preview"
    t.integer  "cost"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "cost"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "media_url"
    t.boolean  "purchased"
    t.integer  "user_id"
  end

  create_table "courses_users", :force => true do |t|
    t.integer "course_id"
    t.integer "user_id"
  end

  create_table "finalcourses", :force => true do |t|
    t.string   "title"
    t.string   "video"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "micropost_id"
  end

  add_index "microposts", ["user_id"], :name => "index_microposts_on_user_id"

  create_table "orders", :force => true do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.date     "expires"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "course_title"
    t.decimal  "amount"
  end

  add_index "orders", ["user_id"], :name => "index_orders_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              :default => false
    t.string   "courses_purchased"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "videos", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "media_url"
    t.integer  "course_id"
  end

end

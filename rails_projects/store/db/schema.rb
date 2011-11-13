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

ActiveRecord::Schema.define(:version => 20111113232836) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.decimal  "total_price"
    t.datetime "purchased_at"
    t.boolean  "shipping"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_requests", :force => true do |t|
    t.string   "path"
    t.float    "page_duration"
    t.float    "view_duration"
    t.float    "db_duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.decimal  "price"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "released_on"
    t.integer  "rating"
    t.boolean  "discontinued"
  end

  create_table "reviews", :force => true do |t|
    t.integer  "product_id"
    t.text     "content"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

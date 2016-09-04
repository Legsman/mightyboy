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

ActiveRecord::Schema.define(version: 20160904102755) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.integer  "order_id"
    t.boolean  "selected",    default: false
    t.string   "option"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["order_id"], name: "index_items_on_order_id", using: :btree

  create_table "orders", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "pickup_time"
    t.string   "phone"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

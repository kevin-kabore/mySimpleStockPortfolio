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

ActiveRecord::Schema.define(version: 20160725171152) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "portfolios", force: :cascade do |t|
    t.integer  "quantity"
    t.float    "purchase_price"
    t.integer  "stock_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "portfolios", ["stock_id"], name: "index_portfolios_on_stock_id", using: :btree
  add_index "portfolios", ["user_id"], name: "index_portfolios_on_user_id", using: :btree

  create_table "stocks", force: :cascade do |t|
    t.string   "code"
    t.string   "company_name"
    t.float    "last_trade_price"
    t.float    "market_cap"
    t.float    "ebitda"
    t.float    "eps"
    t.float    "pe"
    t.float    "ma_50"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "portfolios", "stocks"
  add_foreign_key "portfolios", "users"
end

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

ActiveRecord::Schema.define(:version => 20120123022000) do

  create_table "clubs", :force => true do |t|
    t.string   "name"
    t.string   "street1"
    t.string   "street2"
    t.string   "street3"
    t.string   "city"
    t.string   "province"
    t.string   "postal_code"
    t.integer  "country_id"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "website"
    t.integer  "region_id"
    t.integer  "sheets"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "clubs", ["country_id"], :name => "index_clubs_on_country_id"
  add_index "clubs", ["region_id"], :name => "index_clubs_on_region_id"

  create_table "countries", :primary_key => "numcode", :force => true do |t|
    t.string  "iso"
    t.string  "name"
    t.string  "printable_name"
    t.string  "iso3"
    t.integer "designation_id"
    t.integer "zone"
  end

  create_table "regions", :force => true do |t|
    t.string "name"
    t.string "code"
  end

  create_table "sheets", :force => true do |t|
    t.integer  "number"
    t.integer  "club_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sheets", ["club_id"], :name => "index_sheets_on_club_id"

end

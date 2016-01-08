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

ActiveRecord::Schema.define(version: 20160107021821) do

  create_table "agendas", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "venue"
    t.date     "implementation_date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "albums", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dues_residents", force: :cascade do |t|
    t.integer  "resident_id"
    t.string   "type"
    t.date     "year"
    t.string   "for_month"
    t.string   "for_week"
    t.date     "for_date"
    t.float    "amount"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "image_galleries", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "album_id"
  end

  add_index "image_galleries", ["album_id"], name: "index_image_galleries_on_album_id"

  create_table "organizational_structures", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "resident_id"
  end

  add_index "organizational_structures", ["resident_id"], name: "index_organizational_structures_on_resident_id"

  create_table "residents", force: :cascade do |t|
    t.integer  "parent_id"
    t.string   "name"
    t.string   "phone"
    t.text     "address"
    t.string   "job_status"
    t.string   "home_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "video_galleries", force: :cascade do |t|
    t.integer  "album_id"
    t.string   "title"
    t.string   "video"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end

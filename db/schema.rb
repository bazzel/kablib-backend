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

ActiveRecord::Schema.define(version: 20141013164957) do

  create_table "books", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "cover_image"
  end

  create_table "borrows", force: true do |t|
    t.integer  "book_id"
    t.integer  "user_id"
    t.date     "started_on"
    t.date     "finished_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "borrows", ["book_id"], name: "index_borrows_on_book_id"
  add_index "borrows", ["user_id"], name: "index_borrows_on_user_id"

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taggings", ["book_id"], name: "index_taggings_on_book_id"
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id"

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

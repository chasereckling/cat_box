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

ActiveRecord::Schema.define(version: 20150522162427) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cats", force: :cascade do |t|
    t.string   "name"
    t.integer  "wins"
    t.integer  "loss"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.text     "bio"
    t.text     "quote"
    t.string   "location"
    t.string   "birthday"
    t.string   "relationship"
    t.string   "naparea"
  end

  create_table "cats_likes", force: :cascade do |t|
    t.integer "cat_id"
    t.integer "like_id"
  end

  add_index "cats_likes", ["cat_id"], name: "index_cats_likes_on_cat_id", using: :btree
  add_index "cats_likes", ["like_id"], name: "index_cats_likes_on_like_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.integer  "cat_id"
    t.string   "comment_photo"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendings", force: :cascade do |t|
    t.integer "friend_id"
    t.integer "friender_id"
  end

  create_table "likes", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "photos", force: :cascade do |t|
    t.integer "cat_id"
    t.string  "profile_image"
  end

end

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

ActiveRecord::Schema.define(version: 20151029220227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "intro"
    t.text     "need_to_know"
    t.text     "recap"
    t.text     "hot_and_cold"
    t.text     "opp_lineup"
    t.text     "sharks_lineup"
    t.text     "memorable_moments"
    t.text     "share"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "link1_text"
    t.string   "link1_url"
    t.string   "link2_text"
    t.string   "link2_url"
    t.string   "link3_text"
    t.string   "link3_url"
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "article_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "username"
    t.text     "comment_body"
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id", using: :btree

end

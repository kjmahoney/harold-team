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

ActiveRecord::Schema.define(version: 20161017153805) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beats", force: :cascade do |t|
    t.text     "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "show_id"
    t.index ["show_id"], name: "index_beats_on_show_id", using: :btree
  end

  create_table "notes", force: :cascade do |t|
    t.text     "body"
    t.boolean  "private"
    t.integer  "beat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beat_id"], name: "index_notes_on_beat_id", using: :btree
  end

  create_table "shows", force: :cascade do |t|
    t.text     "title"
    t.datetime "date"
    t.integer  "length"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "beats", "shows"
  add_foreign_key "notes", "beats"
end

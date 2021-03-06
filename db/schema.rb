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

ActiveRecord::Schema.define(version: 20161208194629) do

  create_table "courses", force: :cascade do |t|
    t.string   "Name"
    t.integer  "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "body"
  end

  add_index "courses", ["page_id"], name: "index_courses_on_page_id"

# Could not dump table "pages" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "tag_assigments", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tag_assigments", ["course_id"], name: "index_tag_assigments_on_course_id"
  add_index "tag_assigments", ["tag_id"], name: "index_tag_assigments_on_tag_id"

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

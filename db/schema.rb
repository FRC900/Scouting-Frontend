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

ActiveRecord::Schema.define(version: 20141211021211) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.integer  "form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["form_id"], name: "index_categories_on_form_id"

  create_table "data", force: true do |t|
    t.integer  "data_type_id"
    t.integer  "form_data_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "data", ["data_type_id"], name: "index_data_on_data_type_id"
  add_index "data", ["form_data_id"], name: "index_data_on_form_data_id"

  create_table "data_types", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "data_types", ["category_id"], name: "index_data_types_on_category_id"

  create_table "data_values", force: true do |t|
    t.integer  "data_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "data_values", ["data_id"], name: "index_data_values_on_data_id"

  create_table "form_data", force: true do |t|
    t.integer  "form_id"
    t.integer  "match_number"
    t.integer  "team_id"
    t.integer  "scouter_id"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "form_data", ["form_id"], name: "index_form_data_on_form_id"
  add_index "form_data", ["scouter_id"], name: "index_form_data_on_scouter_id"
  add_index "form_data", ["team_id"], name: "index_form_data_on_team_id"

  create_table "forms", force: true do |t|
    t.string   "name"
    t.date     "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scouters", force: true do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

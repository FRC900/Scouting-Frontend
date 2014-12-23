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

ActiveRecord::Schema.define(version: 20141223173341) do

  create_table "competitions", force: true do |t|
    t.string   "name"
    t.date     "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "competitions_teams", force: true do |t|
    t.integer  "competition_id"
    t.integer  "team_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "competitions_teams", ["competition_id"], name: "index_competitions_teams_on_competition_id"
  add_index "competitions_teams", ["team_id"], name: "index_competitions_teams_on_team_id"

  create_table "match_categories", force: true do |t|
    t.string   "name"
    t.integer  "match_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "match_categories", ["match_form_id"], name: "index_match_categories_on_match_form_id"

  create_table "match_form_data", force: true do |t|
    t.integer  "match_form_id"
    t.integer  "match_id"
    t.integer  "competition_team_id"
    t.integer  "scouter_id"
    t.string   "form_comments"
    t.string   "filename"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "match_form_data", ["competition_team_id"], name: "index_match_form_data_on_competition_team_id"
  add_index "match_form_data", ["match_form_id"], name: "index_match_form_data_on_match_form_id"
  add_index "match_form_data", ["match_id"], name: "index_match_form_data_on_match_id"
  add_index "match_form_data", ["scouter_id"], name: "index_match_form_data_on_scouter_id"

  create_table "match_form_lineitems", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "match_category_id"
    t.string   "column_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "match_form_lineitems", ["match_category_id"], name: "index_match_form_lineitems_on_match_category_id"

  create_table "match_forms", force: true do |t|
    t.string   "name"
    t.integer  "competition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "match_forms", ["competition_id"], name: "index_match_forms_on_competition_id"

  create_table "match_lineitem_values", force: true do |t|
    t.integer  "match_form_lineitem_id"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "match_lineitem_values", ["match_form_lineitem_id"], name: "index_match_lineitem_values_on_match_form_lineitem_id"

  create_table "match_lineitems", force: true do |t|
    t.integer  "match_form_lineitem_id"
    t.integer  "match_form_data_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "match_lineitems", ["match_form_data_id"], name: "index_match_lineitems_on_match_form_data_id"
  add_index "match_lineitems", ["match_form_lineitem_id"], name: "index_match_lineitems_on_match_form_lineitem_id"

  create_table "matches", force: true do |t|
    t.integer  "number"
    t.integer  "competition_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["competition_id"], name: "index_matches_on_competition_id"

  create_table "pit_categories", force: true do |t|
    t.string   "name"
    t.integer  "pit_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pit_categories", ["pit_form_id"], name: "index_pit_categories_on_pit_form_id"

  create_table "pit_form_data", force: true do |t|
    t.integer  "pit_form_id"
    t.integer  "match_id"
    t.integer  "competition_team_id"
    t.integer  "scouter_id"
    t.string   "filename"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pit_form_data", ["competition_team_id"], name: "index_pit_form_data_on_competition_team_id"
  add_index "pit_form_data", ["match_id"], name: "index_pit_form_data_on_match_id"
  add_index "pit_form_data", ["pit_form_id"], name: "index_pit_form_data_on_pit_form_id"
  add_index "pit_form_data", ["scouter_id"], name: "index_pit_form_data_on_scouter_id"

  create_table "pit_form_lineitems", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "pit_category_id"
    t.string   "column_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pit_form_lineitems", ["pit_category_id"], name: "index_pit_form_lineitems_on_pit_category_id"

  create_table "pit_forms", force: true do |t|
    t.string   "name"
    t.integer  "competition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pit_forms", ["competition_id"], name: "index_pit_forms_on_competition_id"

  create_table "pit_lineitem_values", force: true do |t|
    t.integer  "pit_form_lineitem_id"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pit_lineitem_values", ["pit_form_lineitem_id"], name: "index_pit_lineitem_values_on_pit_form_lineitem_id"

  create_table "pit_lineitems", force: true do |t|
    t.integer  "pit_form_lineitem_id"
    t.integer  "pit_form_data_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pit_lineitems", ["pit_form_data_id"], name: "index_pit_lineitems_on_pit_form_data_id"
  add_index "pit_lineitems", ["pit_form_lineitem_id"], name: "index_pit_lineitems_on_pit_form_lineitem_id"

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

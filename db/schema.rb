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

ActiveRecord::Schema.define(version: 20150302055530) do

  create_table "districts", force: :cascade do |t|
    t.integer  "province_id", limit: 4
    t.string   "name",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "districts", ["province_id"], name: "index_districts_on_province_id", using: :btree

  create_table "grade_levels", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "grades", force: :cascade do |t|
    t.integer  "grade_level_id",   limit: 4
    t.string   "name",             limit: 255
    t.string   "alternative_name", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "grades", ["grade_level_id"], name: "index_grades_on_grade_level_id", using: :btree

  create_table "provinces", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",        limit: 255,   null: false
    t.string   "title",       limit: 255,   null: false
    t.text     "description", limit: 65535, null: false
    t.text     "the_role",    limit: 65535, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "school_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "abbreviation",   limit: 255
    t.string   "motto",          limit: 255
    t.string   "principal",      limit: 255
    t.string   "email",          limit: 255
    t.string   "phones",         limit: 255
    t.integer  "school_type_id", limit: 4
    t.integer  "province_id",    limit: 4
    t.integer  "district_id",    limit: 4
    t.integer  "township_id",    limit: 4
    t.string   "neighbourhood",  limit: 255
    t.string   "street",         limit: 255
    t.string   "building",       limit: 255
    t.boolean  "active",         limit: 1
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "sexes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "townships", force: :cascade do |t|
    t.integer  "district_id", limit: 4
    t.string   "name",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "townships", ["district_id"], name: "index_townships_on_district_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",            limit: 255, null: false
    t.string   "access_id",        limit: 255
    t.string   "username",         limit: 255
    t.string   "crypted_password", limit: 255
    t.string   "salt",             limit: 255
    t.integer  "role_id",          limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "districts", "provinces"
  add_foreign_key "grades", "grade_levels"
  add_foreign_key "townships", "districts"
end

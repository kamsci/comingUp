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

ActiveRecord::Schema.define(version: 20160716233659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string   "cohort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cohorts_students", force: :cascade do |t|
    t.integer  "cohort_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cohorts_students", ["cohort_id"], name: "index_cohorts_students_on_cohort_id", using: :btree
  add_index "cohorts_students", ["student_id"], name: "index_cohorts_students_on_student_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "review_type"
    t.string   "reviewer_name"
    t.text     "review_content"

  create_table "githubstudents", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider_id"
    t.string   "provider_token"
    t.string   "provider_name"
    t.text     "picture"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end


  add_index "reviews", ["student_id"], name: "index_reviews_on_student_id", using: :btree
  add_index "githubstudents", ["user_id"], name: "index_githubstudents_on_user_id", using: :btree


  create_table "students", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "brand"
    t.text     "linkedin"
    t.text     "resume"
    t.text     "jobtracker"
    t.text     "portfolio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "students", ["user_id"], name: "index_students_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end


  add_foreign_key "cohorts_students", "cohorts"
  add_foreign_key "cohorts_students", "students"
  add_foreign_key "reviews", "students"
  add_foreign_key "githubstudents", "users"
  add_foreign_key "students", "users"
end

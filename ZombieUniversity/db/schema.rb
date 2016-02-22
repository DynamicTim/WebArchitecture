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

ActiveRecord::Schema.define(version: 20160221230444) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.float    "creditHours"
    t.string   "level"
  end

  create_table "professors", force: :cascade do |t|
    t.string   "name"
    t.integer  "number"
    t.float    "numberOfBrainsEaten"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "email"
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.string   "roomNumber"
    t.integer  "professor_id"
    t.integer  "course_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "semester"
  end

  add_index "sections", ["course_id"], name: "index_sections_on_course_id"
  add_index "sections", ["professor_id"], name: "index_sections_on_professor_id"

  create_table "sections_students", force: :cascade do |t|
    t.integer  "section_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sections_students", ["section_id"], name: "index_sections_students_on_section_id"
  add_index "sections_students", ["student_id"], name: "index_sections_students_on_student_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.integer  "number"
    t.float    "percentDecomposed"
    t.float    "numberOfLimbs"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "email"
    t.float    "gpa"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

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

ActiveRecord::Schema.define(version: 20141023003043) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classrooms", force: true do |t|
    t.string   "subject"
    t.integer  "grade"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "school_id"
  end

  add_index "classrooms", ["school_id"], name: "index_classrooms_on_school_id", using: :btree

  create_table "events", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "teacher_id"
    t.integer  "student_id"
  end

  create_table "messages", force: true do |t|
    t.text     "text"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.string   "subject_line"
    t.string   "recipients"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.integer  "classroom_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
    t.string   "password_digest"
    t.string   "email"
  end

  create_table "students_classrooms", force: true do |t|
    t.integer "student_id"
    t.integer "classroom_id"
  end

  create_table "students_parents", force: true do |t|
    t.integer "student_id"
    t.integer "parent_id"
  end

  create_table "students_teachers", force: true do |t|
    t.integer "student_id"
    t.integer "teacher_id"
  end

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "gender"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.integer  "school_id"
    t.string   "address"
    t.string   "phone"
    t.string   "emergency_phone"
    t.string   "notes"
    t.string   "student_evaluation"
    t.string   "picture"
    t.string   "schedule"
    t.integer  "grade"
  end

  add_index "users", ["school_id"], name: "index_users_on_school_id", using: :btree

end

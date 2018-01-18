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

ActiveRecord::Schema.define(version: 20180117193748) do

  create_table "assessments", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "student_assessment_id"
    t.string "name"
    t.index ["student_assessment_id"], name: "index_assessments_on_student_assessment_id"
    t.index ["teacher_id"], name: "index_assessments_on_teacher_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "teacher_class_id"
    t.integer "student_course_id"
    t.string "name"
    t.index ["student_course_id"], name: "index_courses_on_student_course_id"
    t.index ["teacher_class_id"], name: "index_courses_on_teacher_class_id"
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_assessments", force: :cascade do |t|
    t.integer "student_id"
    t.integer "assessment_id"
    t.string "pre_assessment_score"
    t.string "post_assessment_score"
    t.index ["assessment_id"], name: "index_student_assessments_on_assessment_id"
    t.index ["student_id"], name: "index_student_assessments_on_student_id"
  end

  create_table "student_courses", force: :cascade do |t|
    t.integer "student_id"
    t.integer "course_id"
    t.index ["course_id"], name: "index_student_courses_on_course_id"
    t.index ["student_id"], name: "index_student_courses_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_assessment_id"
  end

  create_table "teacher_courses", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "course_id"
    t.index ["course_id"], name: "index_teacher_courses_on_course_id"
    t.index ["teacher_id"], name: "index_teacher_courses_on_teacher_id"
  end

  create_table "teacher_schools", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "school_id"
    t.index ["school_id"], name: "index_teacher_schools_on_school_id"
    t.index ["teacher_id"], name: "index_teacher_schools_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "teacher_school_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

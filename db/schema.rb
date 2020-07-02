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

ActiveRecord::Schema.define(version: 20200702100441) do

  create_table "check_test_elements", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "correctness"
    t.integer  "check_test_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["check_test_id"], name: "index_check_test_elements_on_check_test_id", using: :btree
  end

  create_table "check_tests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "field_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "student_id"
    t.index ["field_id"], name: "index_check_tests_on_field_id", using: :btree
    t.index ["student_id"], name: "index_check_tests_on_student_id", using: :btree
  end

  create_table "fields", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_fields_on_subject_id", using: :btree
  end

  create_table "practice_question_elements", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "correctness"
    t.integer  "practice_question_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "practice_question_number"
    t.index ["practice_question_id"], name: "index_practice_question_elements_on_practice_question_id", using: :btree
  end

  create_table "practice_questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.binary   "source_picture",        limit: 65535
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "check_test_element_id"
    t.index ["check_test_element_id"], name: "index_practice_questions_on_check_test_element_id", using: :btree
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "check_test_elements", "check_tests"
  add_foreign_key "check_tests", "fields"
  add_foreign_key "check_tests", "students"
  add_foreign_key "fields", "subjects"
  add_foreign_key "practice_question_elements", "practice_questions"
  add_foreign_key "practice_questions", "check_test_elements"
end

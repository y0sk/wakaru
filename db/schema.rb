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

ActiveRecord::Schema.define(version: 20200714104225) do

  create_table "active_admin_comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "namespace"
    t.text     "body",          limit: 65535
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "check_test_answers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "answer_of_check_test_option_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "check_test_sentence_id"
    t.integer  "student_id"
    t.index ["check_test_sentence_id"], name: "index_check_test_answers_on_check_test_sentence_id", using: :btree
    t.index ["student_id"], name: "index_check_test_answers_on_student_id", using: :btree
  end

  create_table "check_test_options", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "option",                 limit: 65535
    t.integer  "check_test_sentence_id"
    t.boolean  "correctness",                          default: false
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.index ["check_test_sentence_id"], name: "index_check_test_options_on_check_test_sentence_id", using: :btree
  end

  create_table "check_test_sentences", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "check_test_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.text     "sentence",      limit: 65535
    t.index ["check_test_id"], name: "index_check_test_sentences_on_check_test_id", using: :btree
  end

  create_table "check_tests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "field_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.index ["field_id"], name: "index_check_tests_on_field_id", using: :btree
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
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "check_test_sentence_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.bigint   "image_file_size"
    t.datetime "image_updated_at"
    t.index ["check_test_sentence_id"], name: "index_practice_questions_on_check_test_sentence_id", using: :btree
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

  create_table "video_lectures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "video_lecture_url",     limit: 65535
    t.text     "memo",                  limit: 65535
    t.integer  "practice_questions_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["practice_questions_id"], name: "index_video_lectures_on_practice_questions_id", using: :btree
  end

  add_foreign_key "check_test_answers", "check_test_sentences"
  add_foreign_key "check_test_answers", "students"
  add_foreign_key "check_test_options", "check_test_sentences"
  add_foreign_key "check_test_sentences", "check_tests"
  add_foreign_key "check_tests", "fields"
  add_foreign_key "fields", "subjects"
  add_foreign_key "practice_question_elements", "practice_questions"
  add_foreign_key "practice_questions", "check_test_sentences"
end

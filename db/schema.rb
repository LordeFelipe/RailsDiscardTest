# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_07_180654) do
  create_table "counties", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scheduled_exams", force: :cascade do |t|
    t.date "date"
    t.integer "exam_id", null: false
    t.integer "virtual_classroom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_scheduled_exams_on_exam_id"
    t.index ["virtual_classroom_id"], name: "index_scheduled_exams_on_virtual_classroom_id"
  end

  create_table "school_classes", force: :cascade do |t|
    t.string "name"
    t.integer "school_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_school_classes_on_school_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.integer "county_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["county_id"], name: "index_schools_on_county_id"
  end

  create_table "virtual_classrooms", force: :cascade do |t|
    t.string "name"
    t.integer "school_class_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_class_id"], name: "index_virtual_classrooms_on_school_class_id"
  end

  add_foreign_key "scheduled_exams", "exams"
  add_foreign_key "scheduled_exams", "virtual_classrooms"
  add_foreign_key "school_classes", "schools"
  add_foreign_key "schools", "counties"
  add_foreign_key "virtual_classrooms", "school_classes"
end

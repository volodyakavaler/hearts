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

ActiveRecord::Schema.define(version: 2020_02_23_185804) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "desease_record_notes", force: :cascade do |t|
    t.date "record_date"
    t.string "dynamics"
    t.text "etc"
    t.text "destination"
    t.bigint "desease_record_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["desease_record_id"], name: "index_desease_record_notes_on_desease_record_id"
  end

  create_table "desease_records", force: :cascade do |t|
    t.date "start_date"
    t.date "finish_date"
    t.string "result"
    t.string "disease_classification"
    t.text "description"
    t.bigint "sick_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sick_id"], name: "index_desease_records_on_sick_id"
  end

  create_table "devices", force: :cascade do |t|
    t.string "name"
    t.string "type_of_device"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "uid"
  end

  create_table "heart_points", force: :cascade do |t|
    t.float "x"
    t.bigint "heart_result_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "y"
    t.index ["heart_result_id"], name: "index_heart_points_on_heart_result_id"
  end

  create_table "heart_programs", force: :cascade do |t|
    t.bigint "sick_id"
    t.bigint "device_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["device_id"], name: "index_heart_programs_on_device_id"
    t.index ["sick_id"], name: "index_heart_programs_on_sick_id"
  end

  create_table "heart_results", force: :cascade do |t|
    t.bigint "sick_id"
    t.bigint "heart_program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "device_type"
    t.index ["heart_program_id"], name: "index_heart_results_on_heart_program_id"
    t.index ["sick_id"], name: "index_heart_results_on_sick_id"
  end

  create_table "lifeanamneses", force: :cascade do |t|
    t.string "marital_status"
    t.string "children"
    t.string "smoking"
    t.string "alcohol_consumption"
    t.string "drug_use"
    t.string "job"
    t.string "nutrition"
    t.string "living_conditions"
    t.string "past_illnesses"
    t.bigint "sick_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sick_id"], name: "index_lifeanamneses_on_sick_id"
  end

  create_table "sicks", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "patronymic"
    t.date "date_of_birth"
    t.string "address"
    t.string "phone"
    t.string "policy"
    t.string "passport"
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "lifeanamnese_id"
    t.index ["lifeanamnese_id"], name: "index_sicks_on_lifeanamnese_id"
  end

  add_foreign_key "desease_record_notes", "desease_records"
  add_foreign_key "desease_records", "sicks"
  add_foreign_key "heart_points", "heart_results"
  add_foreign_key "heart_programs", "devices"
  add_foreign_key "heart_programs", "sicks"
  add_foreign_key "heart_results", "heart_programs"
  add_foreign_key "heart_results", "sicks"
  add_foreign_key "lifeanamneses", "sicks"
  add_foreign_key "sicks", "lifeanamneses"
end

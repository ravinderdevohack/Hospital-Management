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

ActiveRecord::Schema.define(version: 2022_02_12_055335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.string "speciality"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "employee_id"
    t.bigint "user_id"
    t.integer "symptoms"
    t.date "date"
    t.string "age"
    t.string "time"
    t.string "slot"
    t.index ["employee_id"], name: "index_appointments_on_employee_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "doctor_slots", force: :cascade do |t|
    t.bigint "employee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date"
    t.string "slot1"
    t.string "slot2"
    t.string "slot3"
    t.string "slot4"
    t.string "slot5"
    t.string "slot6"
    t.string "slot7"
    t.string "slot8"
    t.index ["employee_id"], name: "index_doctor_slots_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.string "aadhar_number"
    t.string "address"
    t.string "salary"
    t.date "joining_date"
    t.date "resignation_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: ""
    t.boolean "active", default: true, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.string "qualification"
    t.string "employee_type"
    t.string "bio"
    t.bigint "department_id"
    t.string "avatar"
    t.time "shift_start_at"
    t.time "shift_end_at"
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
  end

  create_table "employees_specialists", id: false, force: :cascade do |t|
    t.bigint "specialist_id"
    t.bigint "employee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_employees_specialists_on_employee_id"
    t.index ["specialist_id"], name: "index_employees_specialists_on_specialist_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "sex"
    t.string "phone_number"
    t.string "email"
    t.string "address"
    t.string "diseases"
    t.bigint "ward_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "employee_id"
    t.datetime "addmit_date", precision: 6
    t.datetime "discharge_date", precision: 6
    t.bigint "user_id"
    t.index ["employee_id"], name: "index_patients_on_employee_id"
    t.index ["user_id"], name: "index_patients_on_user_id"
    t.index ["ward_id"], name: "index_patients_on_ward_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "slots", force: :cascade do |t|
    t.string "appointment_time"
    t.date "date"
  end

  create_table "specialists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "syndromes", force: :cascade do |t|
    t.string "name"
    t.bigint "specialist_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["specialist_id"], name: "index_syndromes_on_specialist_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "phone_number"
    t.integer "user_type", default: 0, null: false
    t.integer "display", default: 1, null: false
    t.string "provider", limit: 50, default: "", null: false
    t.string "uid", limit: 500, default: "", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wards", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

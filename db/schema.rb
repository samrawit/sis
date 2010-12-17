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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101215171523) do

  create_table "clearances", :force => true do |t|
    t.string   "reason_for"
    t.date     "last_date_attend"
    t.integer  "class_year"
    t.integer  "clearance_semister"
    t.date     "clearance_date"
    t.text     "reason_for_withdrawal"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sex",         :limit => nil
    t.date     "birth_date"
    t.string   "mother_name"
  end

  create_table "students", :force => true do |t|
    t.integer  "person_id"
    t.string   "id_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "undergrad_departments", :force => true do |t|
    t.string   "departmentname"
    t.integer  "preference"
    t.integer  "undergraduate_program_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "undergraduate_programs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "enrollmenttype"
    t.string   "programat"
    t.integer  "band"
    t.integer  "student_id"
  end

end

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

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20101216113852) do

  create_table "educational_bgds", :force => true do |t|
    t.integer  "student_id"
    t.integer  "type"
    t.string   "institution_name"
    t.string   "institution_rgn"
    t.string   "institution_zone"
    t.string   "institution_town"
    t.string   "stream"
    t.string   "reg_num"
    t.string   "result"
    t.string   "leaving_reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employements", :force => true do |t|
    t.integer  "student_id"
    t.string   "job_type"
    t.string   "employer_name"
    t.text     "employer_add"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "family_infos", :force => true do |t|
    t.integer  "student_id"
    t.string   "fathers_occ"
    t.integer  "fathers_ed_level"
    t.string   "mothers_full_name"
    t.string   "mothers_occ"
    t.integer  "mothers_ed_level"
    t.datetime "created_at"
    t.datetime "updated_at"
=======
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
>>>>>>> 53a8e214d8da48fff61c121e2740ad8404ec9b0e
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sex",            :limit => nil
    t.date     "birth_date"
    t.string   "mother_name"
    t.string   "amh_full_name"
    t.string   "photo"
    t.string   "birth_rgn"
    t.string   "birth_woreda"
    t.string   "birth_town"
    t.string   "birth_kebele"
    t.string   "nationality"
    t.integer  "marital_status"
    t.string   "em_name"
    t.string   "em_rnship"
    t.string   "em_rgn"
    t.string   "em_woreda"
    t.string   "em_town"
    t.string   "em_hnum"
    t.string   "em_tel_res"
    t.string   "em_tel_office"
    t.string   "email"
  end

  create_table "students", :force => true do |t|
    t.integer  "person_id"
<<<<<<< HEAD
    t.string   "stdID"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "disability"
  end

  create_table "subjects", :force => true do |t|
    t.integer  "educational_bgd_id"
    t.string   "name"
    t.string   "result"
=======
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
>>>>>>> 53a8e214d8da48fff61c121e2740ad8404ec9b0e
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "enrollmenttype"
    t.string   "programat"
    t.integer  "band"
    t.integer  "student_id"
  end

end

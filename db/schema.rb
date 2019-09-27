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

ActiveRecord::Schema.define(version: 2019_09_19_081007) do

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "j_code"
    t.string "name"
    t.string "department"
    t.string "section"
    t.date "join_date"
    t.integer "experience"
    t.string "division"
    t.date "date_of_birth"
    t.string "blood_type"
    t.string "address"
    t.string "phone1"
    t.string "phone2"
    t.string "education"
    t.date "graduation"
    t.string "specified_dpt"
  end

  create_table "licenses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "expiration"
    t.string "surveillance"
    t.integer "S_recommendation"
    t.integer "J_recommendation"
    t.string "last_editor"
    t.integer "allowance"
    t.integer "bonus"
    t.string "license_name", null: false
  end

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "license"
    t.string "license_name"
    t.string "holder_name"
    t.date "date_of_license"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_editor"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.string "user_name", null: false
    t.string "password", null: false
    t.integer "admin", default: 0
  end

end

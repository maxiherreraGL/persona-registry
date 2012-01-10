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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120106130558) do

  create_table "interest_personas", :force => true do |t|
    t.integer  "interest_id"
    t.integer  "persona_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "interest_personas", ["interest_id"], :name => "index_interest_personas_on_interest_id"
  add_index "interest_personas", ["persona_id"], :name => "index_interest_personas_on_persona_id"

  create_table "interests", :force => true do |t|
    t.string   "name"
    t.string   "candidate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "person_rols", :force => true do |t|
    t.integer  "person_id"
    t.integer  "rol_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "person_rols", ["person_id"], :name => "index_person_rols_on_person_id"
  add_index "person_rols", ["rol_id"], :name => "index_person_rols_on_rol_id"

  create_table "persona_people", :force => true do |t|
    t.integer  "persona_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "persona_people", ["person_id"], :name => "index_persona_people_on_person_id"
  add_index "persona_people", ["persona_id"], :name => "index_persona_people_on_persona_id"

  create_table "personas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rols", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

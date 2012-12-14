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

ActiveRecord::Schema.define(:version => 20121214090955) do

  create_table "booleananswers", :force => true do |t|
    t.string   "content"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  add_index "booleananswers", ["question_id"], :name => "index_booleananswers_on_question_id"

  create_table "choiseanswers", :force => true do |t|
    t.integer  "question_id"
    t.string   "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "choiseanswers", ["question_id"], :name => "index_choiseanswers_on_question_id"

  create_table "dateanswers", :force => true do |t|
    t.date     "content"
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "dateanswers", ["question_id"], :name => "index_dateanswers_on_question_id"

  create_table "numberanswers", :force => true do |t|
    t.integer  "content"
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "numberanswers", ["question_id"], :name => "index_numberanswers_on_question_id"

  create_table "questionares", :force => true do |t|
    t.integer  "user_id"
    t.string   "questionare_name"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "serial_no"
  end

  add_index "questionares", ["user_id"], :name => "index_questionares_on_user_id"

  create_table "questions", :force => true do |t|
    t.string   "content"
    t.string   "answer_type"
    t.integer  "questionare_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "questions", ["questionare_id"], :name => "index_questions_on_questionare_id"

  create_table "textanswers", :force => true do |t|
    t.text     "content"
    t.integer  "question_id"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "textanswers", ["user_id"], :name => "index_textanswers_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "priviledge"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "wordanswers", :force => true do |t|
    t.string   "content"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  add_index "wordanswers", ["question_id"], :name => "index_wordanswers_on_question_id"

end

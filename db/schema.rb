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

ActiveRecord::Schema.define(:version => 20120427060026) do

  create_table "albums", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "descript"
    t.string   "question"
    t.integer  "permiss",        :default => 0
    t.string   "answer"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
    t.integer  "album_type"
    t.integer  "hits",           :default => 0
    t.integer  "front_photo_id"
  end

  create_table "diaries", :force => true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.integer  "diary_type"
    t.integer  "diary_permission"
    t.text     "context"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kindeditor_assets", :force => true do |t|
    t.string   "asset"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", :force => true do |t|
    t.string   "name"
    t.string   "upload_person"
    t.datetime "upload_time"
    t.string   "url"
    t.string   "descript"
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "replies", :force => true do |t|
    t.integer  "reply_type"
    t.string   "reply_user_id"
    t.string   "reply_content"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "password_salt"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "login"
    t.string   "name"
    t.string   "age"
    t.string   "sex"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end

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

ActiveRecord::Schema.define(:version => 20120202171434) do

  create_table "information", :force => true do |t|
    t.string   "photo"
    t.string   "datenaissance"
    t.string   "lieu"
    t.string   "siteinternet"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "information", ["user_id"], :name => "index_information_on_user_id"

  create_table "statuts", :force => true do |t|
    t.string   "body"
    t.string   "auteur"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "statuts", ["user_id"], :name => "index_statuts_on_user_id"

  create_table "user_informations", :force => true do |t|
    t.string   "photo"
    t.string   "datenaissance"
    t.string   "lieu"
    t.string   "siteinternet"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_informations", ["user_id"], :name => "index_user_informations_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "prenom"
    t.string   "nom"
    t.string   "mail"
    t.string   "password_digest"
    t.string   "isvisible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

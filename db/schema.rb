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

ActiveRecord::Schema.define(:version => 20130228132235) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "assets", :force => true do |t|
    t.string   "asset_file_name"
    t.string   "asset_contet_type"
    t.integer  "asset_file_size"
    t.datetime "asset_updated_at"
    t.integer  "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "contact_messages", :force => true do |t|
    t.string   "name"
    t.string   "string"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fianzens", :force => true do |t|
    t.date     "Datum"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "finanzens", :force => true do |t|
    t.date     "datum"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "finanzpositions", :force => true do |t|
    t.integer  "FinanzenNr"
    t.string   "Art"
    t.string   "Beschreibung"
    t.float    "Wert"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "zahlungsart_id"
  end

  create_table "finanzs", :force => true do |t|
    t.string   "Title"
    t.date     "Datum"
    t.string   "Zahlungstyp"
    t.string   "Wert"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "finanzkopfnr"
    t.integer  "FinanzenNr"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "user_finanzs", :force => true do |t|
    t.integer  "user_id"
    t.integer  "finanz_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_finanzs", ["finanz_id"], :name => "index_user_finanzs_on_finanz_id"
  add_index "user_finanzs", ["user_id"], :name => "index_user_finanzs_on_user_id"

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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_table "zahlungsarts", :force => true do |t|
    t.string   "Art"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

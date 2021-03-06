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

ActiveRecord::Schema.define(:version => 20121217193707) do

  create_table "accounts", :force => true do |t|
    t.string   "title"
    t.text     "phone_number"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "status"
  end

  create_table "contacts", :force => true do |t|
    t.string   "title"
    t.text     "phone_number"
    t.integer  "account_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "contacts", ["account_id"], :name => "index_contacts_on_account_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "international_name"
    t.string   "producer"
    t.string   "formofproduct"
    t.string   "Indications"
    t.string   "dateexpires"
    t.string   "registrationcertificate"
    t.string   "dateregistrationcertificate"
    t.string   "atcode"
    t.string   "orderministry"
    t.integer  "category_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "products", ["category_id"], :name => "index_products_on_category_id"

  create_table "products_temps", :force => true do |t|
    t.integer "category_id"
    t.integer "sub_id"
    t.string  "url"
    t.integer "status"
  end

  create_table "sub_category_products", :force => true do |t|
    t.string   "url"
    t.integer  "categoryproduct_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "sub_category_products", ["categoryproduct_id"], :name => "index_sub_category_products_on_categoryproduct_id"

  create_table "subs", :force => true do |t|
    t.string   "url"
    t.integer  "category_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "count_on_site"
    t.integer  "count_parsed"
  end

  add_index "subs", ["category_id"], :name => "index_subs_on_category_id"

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
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end

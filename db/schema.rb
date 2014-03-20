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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140320092200) do

  create_table "permissions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions_roles", force: true do |t|
    t.integer "role_id"
    t.integer "permission_id"
  end

  add_index "permissions_roles", ["role_id", "permission_id"], name: "index_permissions_roles_on_role_id_and_permission_id", using: :btree

  create_table "permissions_users", force: true do |t|
    t.integer "user_id"
    t.integer "permission_id"
  end

  add_index "permissions_users", ["user_id", "permission_id"], name: "index_permissions_users_on_user_id_and_permission_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "status"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

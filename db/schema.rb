# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_03_042042) do
  create_table "gate_groups", force: :cascade do |t|
    t.integer "gate_id", null: false
    t.integer "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gate_id"], name: "index_gate_groups_on_gate_id"
    t.index ["group_id"], name: "index_gate_groups_on_group_id"
  end

  create_table "gates", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rfid"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "group_id", null: false
    t.string "password_digest", null: false
    t.datetime "expired_at"
    t.string "access_token"
    t.string "rfid"
    t.string "UID"
    t.string "NIK"
    t.index ["NIK"], name: "index_users_on_NIK", unique: true
    t.index ["UID"], name: "index_users_on_UID", unique: true
    t.index ["group_id"], name: "index_users_on_group_id"
  end

  add_foreign_key "gate_groups", "gates"
  add_foreign_key "gate_groups", "groups"
  add_foreign_key "users", "groups"
end

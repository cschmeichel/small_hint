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

ActiveRecord::Schema.define(version: 2020_08_21_132837) do

  create_table "doctors", force: :cascade do |t|
    t.integer "practice_id"
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["practice_id"], name: "index_doctors_on_practice_id"
  end

  create_table "identifiers", force: :cascade do |t|
    t.string "identifiable_type"
    t.string "identifiable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identifiable_type", "identifiable_id"], name: "index_identifiers_on_identifiable_type_and_identifiable_id"
  end

  create_table "partner_integrations", force: :cascade do |t|
    t.integer "practice_id"
    t.integer "partner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partner_id"], name: "index_partner_integrations_on_partner_id"
    t.index ["practice_id"], name: "index_partner_integrations_on_practice_id"
  end

  create_table "partners", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "partner_integrations_id"
    t.index ["partner_integrations_id"], name: "index_partners_on_partner_integrations_id"
    t.index ["type"], name: "index_partners_on_type"
  end

  create_table "patients", force: :cascade do |t|
    t.integer "practice_id"
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["practice_id"], name: "index_patients_on_practice_id"
  end

  create_table "practices", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

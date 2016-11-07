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

ActiveRecord::Schema.define(version: 20161106202323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "annual_revs", force: :cascade do |t|
    t.string   "range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "billing_periods", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "building_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "csi_divisions", force: :cascade do |t|
    t.string   "code"
    t.string   "title"
    t.string   "code_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "name"
    t.integer  "scope_cycle_id"
    t.string   "doc"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.text     "description"
    t.decimal  "value"
    t.decimal  "previous_complete"
    t.decimal  "this_application"
    t.string   "completed_to_date_percent"
    t.decimal  "completed_to_date_value"
    t.integer  "sov_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "form_id"
  end

  create_table "material_line_items", force: :cascade do |t|
    t.integer  "stored_material_id"
    t.text     "description"
    t.decimal  "stored_at_cycle_start"
    t.decimal  "received_this_cycle"
    t.decimal  "installed_this_cycle"
    t.decimal  "stored_at_cycle_end"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "org_admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "organization_id"
  end

  add_index "org_admins", ["email"], name: "index_org_admins_on_email", unique: true, using: :btree
  add_index "org_admins", ["reset_password_token"], name: "index_org_admins_on_reset_password_token", unique: true, using: :btree

  create_table "org_sizes", force: :cascade do |t|
    t.string   "range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "fed_tax_id"
    t.string   "hq_zip"
    t.boolean  "validated"
    t.integer  "field_id"
    t.integer  "annual_rev_id"
    t.integer  "org_size_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "organization_id"
    t.string   "project_number"
    t.string   "estimated_spend"
    t.string   "square_feet"
    t.integer  "building_type_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "project_address"
    t.string   "project_address_zip"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "scope_cycles", force: :cascade do |t|
    t.integer  "billing_period_id"
    t.integer  "scope_id"
    t.integer  "contributor_id"
    t.integer  "owner_id"
    t.date     "cycle_start_date"
    t.date     "cycle_end_date"
    t.boolean  "owner_approved"
    t.boolean  "contributor_approved"
    t.boolean  "cycle_suspended"
    t.boolean  "cycle_cancelled"
    t.decimal  "original_contract_amt"
    t.decimal  "completed_to_date_total"
    t.decimal  "stored_materials_total"
    t.decimal  "retainage"
    t.decimal  "less_owner_purchases"
    t.decimal  "less_previous_pay_request"
    t.decimal  "amount_due"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "scopes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "visible_to_public"
    t.integer  "csi_division_id"
    t.integer  "billing_period_id"
    t.boolean  "sov_used"
    t.boolean  "stored_materials_used"
    t.integer  "owner_id"
    t.integer  "contributor_id"
    t.string   "send_invite_to"
    t.integer  "project_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "sovs", force: :cascade do |t|
    t.integer  "scope_cycle_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "stored_materials", force: :cascade do |t|
    t.integer  "scope_cycle_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "form_id"
  end

end

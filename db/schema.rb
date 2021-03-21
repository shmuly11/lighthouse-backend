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

ActiveRecord::Schema.define(version: 2021_03_19_172740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assigneds", force: :cascade do |t|
    t.bigint "request_id"
    t.bigint "offer_id"
    t.bigint "member_id"
    t.bigint "member1_id"
    t.boolean "completed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["member1_id"], name: "index_assigneds_on_member1_id"
    t.index ["member_id"], name: "index_assigneds_on_member_id"
    t.index ["offer_id"], name: "index_assigneds_on_offer_id"
    t.index ["request_id"], name: "index_assigneds_on_request_id"
  end

  create_table "broadcasts", force: :cascade do |t|
    t.bigint "community_id", null: false
    t.string "name"
    t.string "color"
    t.string "features"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["community_id"], name: "index_broadcasts_on_community_id"
  end

  create_table "communities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "community_members", force: :cascade do |t|
    t.boolean "facilitator"
    t.bigint "member_id", null: false
    t.bigint "community_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["community_id"], name: "index_community_members_on_community_id"
    t.index ["member_id"], name: "index_community_members_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "email"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "request_offers", force: :cascade do |t|
    t.bigint "member_id", null: false
    t.bigint "broadcast_id", null: false
    t.boolean "assigned"
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "offer"
    t.string "start_date"
    t.string "end_date"
    t.string "time"
    t.string "url"
    t.string "location"
    t.index ["broadcast_id"], name: "index_request_offers_on_broadcast_id"
    t.index ["member_id"], name: "index_request_offers_on_member_id"
  end

  add_foreign_key "assigneds", "members"
  add_foreign_key "assigneds", "members", column: "member1_id"
  add_foreign_key "assigneds", "request_offers", column: "offer_id"
  add_foreign_key "assigneds", "request_offers", column: "request_id"
  add_foreign_key "broadcasts", "communities"
  add_foreign_key "community_members", "communities"
  add_foreign_key "community_members", "members"
  add_foreign_key "request_offers", "broadcasts"
  add_foreign_key "request_offers", "members"
end

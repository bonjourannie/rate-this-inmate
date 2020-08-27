# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_27_155602) do

  create_table "Comments", force: :cascade do |t|
    t.text "body"
    t.integer "user_id"
    t.integer "inmate_id"
    t.string "commentable_type"
    t.integer "commentable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "inmates", force: :cascade do |t|
    t.string "contact"
    t.string "username"
    t.integer "upvote"
    t.string "name"
    t.string "gender"
    t.integer "age"
    t.string "charges"
    t.string "release_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "looking_for"
  end

  create_table "interests", force: :cascade do |t|
    t.string "name"
  end

  create_table "messages", force: :cascade do |t|
    t.string "body"
    t.integer "user_id"
    t.integer "match_id"
    t.boolean "sent_visible", default: true
    t.boolean "received_visible", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "bio"
    t.string "gender"
    t.integer "age"
    t.string "username"
    t.string "location"
    t.string "looking_for"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "interests"
  end

end

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

ActiveRecord::Schema.define(version: 2019_03_26_180345) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.text "description"
    t.integer "publication_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "genre"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "continent"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reading_lists", force: :cascade do |t|
    t.integer "trip_year"
    t.integer "user_id"
    t.integer "destination_id"
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_reading_lists_on_book_id"
    t.index ["destination_id"], name: "index_reading_lists_on_destination_id"
    t.index ["user_id"], name: "index_reading_lists_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.text "review_body"
    t.integer "book_id"
    t.integer "destination_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_reviews_on_book_id"
    t.index ["destination_id"], name: "index_reviews_on_destination_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end

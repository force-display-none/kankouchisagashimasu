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

ActiveRecord::Schema.define(version: 2018_09_15_090141) do

  create_table "areas", force: :cascade do |t|
    t.string "name", null: false
    t.integer "prefecture_id", null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_areas_on_name"
  end

  create_table "l_spot_genres", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_l_spot_genres_on_name"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "spot_review_image_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name", null: false
    t.integer "region_id", null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_prefectures_on_name"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_regions_on_name"
  end

  create_table "s_spot_genres", force: :cascade do |t|
    t.string "name", null: false
    t.integer "l_spot_genre_id", null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_s_spot_genres_on_name"
  end

  create_table "spot_images", force: :cascade do |t|
    t.integer "spot_id", null: false
    t.text "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spot_review_helpfuls", force: :cascade do |t|
    t.integer "spot_review_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spot_review_images", force: :cascade do |t|
    t.integer "spot_review_id", null: false
    t.text "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spot_reviews", force: :cascade do |t|
    t.string "title", null: false
    t.text "body", null: false
    t.date "season", null: false
    t.integer "fellow_travelers", null: false
    t.boolean "public", default: false, null: false
    t.integer "spot_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spot_wants", force: :cascade do |t|
    t.integer "spot_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spot_wents", force: :cascade do |t|
    t.integer "spot_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spots", force: :cascade do |t|
    t.string "name", null: false
    t.integer "area_id", null: false
    t.integer "s_spot_genre_id", null: false
    t.text "description", null: false
    t.text "short_description", null: false
    t.string "period", null: false
    t.string "postal_code"
    t.string "location", null: false
    t.string "path", null: false
    t.float "latitude"
    t.float "longitude"
    t.text "map_url", null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_spots_on_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.string "nickname", null: false
    t.integer "gender", null: false
    t.integer "age", null: false
    t.string "management", default: "user", null: false
    t.datetime "deleted_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end

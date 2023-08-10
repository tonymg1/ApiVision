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

ActiveRecord::Schema[7.0].define(version: 2023_08_10_101919) do
  create_table "episodes", force: :cascade do |t|
    t.integer "episode_number", null: false
    t.integer "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season_id"], name: "index_episodes_on_season_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.integer "user_id"
    t.integer "purchase_option_id"
    t.integer "remaining_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purchase_option_id"], name: "index_libraries_on_purchase_option_id"
    t.index ["user_id"], name: "index_libraries_on_user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title", null: false
    t.text "plot"
    t.integer "purchase_option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purchase_option_id"], name: "index_movies_on_purchase_option_id"
  end

  create_table "purchase_options", force: :cascade do |t|
    t.float "purchase_price", default: 2.99
    t.string "video_quality"
    t.string "purchaseable_type", null: false
    t.integer "purchaseable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "\"purchasable_type\", \"purchasable_id\"", name: "index_purchase_options_on_purchasable_type_and_purchasable_id"
    t.index ["purchaseable_type", "purchaseable_id"], name: "index_purchase_options_on_purchaseable"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "title", null: false
    t.text "plot"
    t.integer "number", null: false
    t.integer "purchase_option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purchase_option_id"], name: "index_seasons_on_purchase_option_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "episodes", "seasons"
  add_foreign_key "libraries", "purchase_options"
  add_foreign_key "libraries", "users"
  add_foreign_key "movies", "purchase_options"
  add_foreign_key "seasons", "purchase_options"
end

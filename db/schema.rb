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

ActiveRecord::Schema.define(version: 2020_12_06_232103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flavors", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "likes", force: :cascade do |t|
    t.boolean "is_like"
    t.bigint "user_id", null: false
    t.bigint "flavor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flavor_id"], name: "index_likes_on_flavor_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "milks", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "purchased_logs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "flavor_id", null: false
    t.bigint "topping_id", null: false
    t.bigint "milk_id", null: false
    t.bigint "scoop_id", null: false
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flavor_id"], name: "index_purchased_logs_on_flavor_id"
    t.index ["milk_id"], name: "index_purchased_logs_on_milk_id"
    t.index ["scoop_id"], name: "index_purchased_logs_on_scoop_id"
    t.index ["topping_id"], name: "index_purchased_logs_on_topping_id"
    t.index ["user_id"], name: "index_purchased_logs_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "flavor_id", null: false
    t.bigint "topping_id", null: false
    t.bigint "milk_id", null: false
    t.bigint "scoop_id", null: false
    t.string "review"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flavor_id"], name: "index_reviews_on_flavor_id"
    t.index ["milk_id"], name: "index_reviews_on_milk_id"
    t.index ["scoop_id"], name: "index_reviews_on_scoop_id"
    t.index ["topping_id"], name: "index_reviews_on_topping_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "scoops", force: :cascade do |t|
    t.integer "number"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "toppings", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "likes", "flavors"
  add_foreign_key "likes", "users"
  add_foreign_key "purchased_logs", "flavors"
  add_foreign_key "purchased_logs", "milks"
  add_foreign_key "purchased_logs", "scoops"
  add_foreign_key "purchased_logs", "toppings"
  add_foreign_key "purchased_logs", "users"
  add_foreign_key "reviews", "flavors"
  add_foreign_key "reviews", "milks"
  add_foreign_key "reviews", "scoops"
  add_foreign_key "reviews", "toppings"
  add_foreign_key "reviews", "users"
end

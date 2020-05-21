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

ActiveRecord::Schema.define(version: 2020_05_21_052548) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.boolean "is_active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories_vendors", id: false, force: :cascade do |t|
    t.integer "vendor_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id", "vendor_id"], name: "index_categories_vendors_on_category_id_and_vendor_id"
    t.index ["vendor_id", "category_id"], name: "index_categories_vendors_on_vendor_id_and_category_id"
  end

  create_table "choices", force: :cascade do |t|
    t.string "name"
    t.boolean "allows_multiple", default: false, null: false
    t.integer "position"
    t.integer "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_choices_on_product_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "state_name"
    t.string "state_code"
    t.string "country_name"
    t.string "alias_name"
    t.integer "vendors_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities_vendors", id: false, force: :cascade do |t|
    t.integer "vendor_id", null: false
    t.integer "city_id", null: false
    t.index ["city_id", "vendor_id"], name: "index_cities_vendors_on_city_id_and_vendor_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "name"
    t.decimal "cost_in_dollars"
    t.integer "position"
    t.integer "choice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["choice_id"], name: "index_options_on_choice_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.text "description"
    t.decimal "cost_in_dollars"
    t.integer "position"
    t.integer "availability", default: 0, null: false
    t.boolean "is_popular", default: false, null: false
    t.string "menu_category"
    t.string "tags"
    t.boolean "is_catering", default: false
    t.integer "vendor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["availability"], name: "index_products_on_availability"
    t.index ["is_catering"], name: "index_products_on_is_catering"
    t.index ["is_popular"], name: "index_products_on_is_popular"
    t.index ["slug"], name: "index_products_on_slug"
    t.index ["vendor_id"], name: "index_products_on_vendor_id"
  end

  create_table "taxes", force: :cascade do |t|
    t.string "description"
    t.decimal "amount"
    t.boolean "is_percentage"
    t.integer "vendor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vendor_id"], name: "index_taxes_on_vendor_id"
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
    t.string "secure_id"
    t.string "slug"
    t.boolean "is_admin", default: false, null: false
    t.string "feature_image"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "strip_card_id"
    t.string "strip_customer_id"
    t.string "provider"
    t.string "uid"
    t.string "time_zone", default: "UTC"
    t.string "receives_email", default: "t"
    t.string "receives_texts", default: "f"
    t.boolean "receives_push_notifications", default: true
    t.date "birth_date"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.boolean "is_blocked", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_users_on_slug"
  end

  create_table "vendors", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.string "secure_id"
    t.string "slug"
    t.string "tagline"
    t.text "description"
    t.float "rating"
    t.integer "price_point", default: 1, null: false
    t.string "payment_name"
    t.string "payment_street_line_1"
    t.string "payment_street_line_2"
    t.string "payment_city"
    t.string "payment_state"
    t.string "payment_zip"
    t.string "facebook_id"
    t.string "instagram_id"
    t.string "youtube_id"
    t.string "twitter_id"
    t.string "time_zone", default: "UTC"
    t.string "phone_number"
    t.boolean "receives_email", default: true
    t.boolean "receives_texts", default: false
    t.integer "current_location_id"
    t.integer "default_location_id"
    t.time "default_closing_time"
    t.integer "default_fulfillment_time_in_minutes"
    t.string "banner_image"
    t.boolean "receives_push_notifications", default: true
    t.string "url_slug"
    t.boolean "auto_print", default: false
    t.boolean "auto_accept", default: false
    t.boolean "hide_foodtruck", default: false
    t.boolean "auto_checkin", default: false
    t.boolean "allow_future_orders", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["current_location_id"], name: "index_vendors_on_current_location_id"
    t.index ["default_location_id"], name: "index_vendors_on_default_location_id"
    t.index ["slug"], name: "index_vendors_on_slug"
    t.index ["user_id"], name: "index_vendors_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "choices", "products"
  add_foreign_key "options", "choices"
  add_foreign_key "products", "vendors"
  add_foreign_key "taxes", "vendors"
  add_foreign_key "vendors", "users"
end

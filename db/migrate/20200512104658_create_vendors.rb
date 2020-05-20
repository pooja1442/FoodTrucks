class CreateVendors < ActiveRecord::Migration[6.0]
  def change
    create_table :vendors do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :secure_id
      t.string :slug
      t.string :tagline
      t.text :description
      t.float :rating
      t.integer :price_point , default: 1 , null: false
      t.string :payment_name
      t.string :payment_street_line_1
      t.string :payment_street_line_2
      t.string :payment_city
      t.string :payment_state
      t.string :payment_zip
      t.string :facebook_id
      t.string :instagram_id
      t.string :youtube_id
      t.string :twitter_id
      t.string :time_zone ,default: "UTC"
      t.string :phone_number
      t.boolean :receives_email , default: true
      t.boolean :receives_texts ,default: false
      t.integer :current_location_id
      t.integer :default_location_id
      t.time    :default_closing_time
      t.integer :default_fulfillment_time_in_minutes
      t.string :banner_image
      t.boolean :receives_push_notifications , default: true
      t.string :url_slug
      t.boolean :auto_print , default: false
      t.boolean :auto_accept ,  default: false
      t.boolean :hide_foodtruck , default: false
      t.boolean :auto_checkin , default: false
      t.boolean :allow_future_orders , default: true

      t.timestamps
    end
    add_index :vendors, :slug 
    add_index :vendors, :current_location_id
    add_index :vendors, :default_location_id
  end
end

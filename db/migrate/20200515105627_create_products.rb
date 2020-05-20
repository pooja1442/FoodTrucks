class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.decimal :cost_in_dollars
      t.integer :position
      t.integer :availability , default: 0 , null: false
      t.boolean :is_popular , default: false, null: false
      t.string :menu_category
      t.string :tags
      t.boolean :is_catering , default: false
      t.references :vendor, null: false, foreign_key: true

      t.timestamps
    end
    add_index :products, :availability
    add_index :products, :is_catering
    add_index :products, :is_popular
    add_index :products, :slug
  
  end
end

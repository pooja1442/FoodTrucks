class CreateJoinTableVendorsCategories < ActiveRecord::Migration[6.0]
  def change
    create_join_table :vendors, :categories do |t|
       t.index [:vendor_id, :category_id]
       t.index [:category_id, :vendor_id]
       t.timestamps null: false
    end
  end
end

class CreateJoinTableVendorsCities < ActiveRecord::Migration[6.0]
  def change
    create_join_table :vendors, :cities do |t|
      # t.index [:vendor_id, :city_id]
       t.index [:city_id, :vendor_id]
    end
  end
end

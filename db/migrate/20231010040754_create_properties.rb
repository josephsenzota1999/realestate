class CreateProperties < ActiveRecord::Migration[7.1]
  def change
    create_table :properties do |t|
      t.string :title
      t.text :desciption
      t.decimal :price
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :area_sqft
      t.string :property_type
      t.string :status
      t.string :timestamps

      t.timestamps
    end
  end
end

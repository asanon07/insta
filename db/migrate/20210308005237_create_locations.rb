class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.text :name
      t.text :prefecture
      t.text :municipalities
      t.text :address
      t.integer :division
      t.string :photo
      t.text :photo_description
      t.integer :user_id

      t.timestamps
    end
  end
end

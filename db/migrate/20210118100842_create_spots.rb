class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.text :name
      t.text :prefecture
      t.text :municipalities
      t.text :address
      t.integer :class
      t.numeric :photo
      t.numeric :registration_date
      t.integer :user_id

      t.timestamps
    end
  end
end

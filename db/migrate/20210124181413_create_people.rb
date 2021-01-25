class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.text :name
      t.text :municipalities
      t.text :address
      t.integer :class
      t.blob :photo
      t.text :registration_date
      t.integer :user_id

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.string :authority
      t.numeric :registration_data
      t.integer :registration_quantity
      t.numeric :login_date
      t.integer :user_id

      t.timestamps
    end
  end
end

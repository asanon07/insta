class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.text :name
      t.integer :age
      t.text :email
      t.integer :authority
      t.integer :registration_quantity
      t.text :login_date
      t.text :password_digest

      t.timestamps
    end
  end
end

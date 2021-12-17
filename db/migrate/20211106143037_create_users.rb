class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :username
      t.text :email
      t.text :password_digest
      t.integer :zip_code
      t.text :breed
      t.text :bio
      t.text :profile_photo

      t.timestamps
    end
  end
end

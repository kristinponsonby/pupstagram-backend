class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :zip_code
      t.string :breed
      t.string :bio
      t.string :profile_photo

      t.timestamps
    end
  end
end

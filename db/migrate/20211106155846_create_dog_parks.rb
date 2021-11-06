class CreateDogParks < ActiveRecord::Migration[6.1]
  def change
    create_table :dog_parks do |t|
      t.string :name
      t.string :url
      t.string :image_url
      t.string :address
      t.integer :zip_code
      t.string :yelp_id
      t.integer :rating

      t.timestamps
    end
  end
end

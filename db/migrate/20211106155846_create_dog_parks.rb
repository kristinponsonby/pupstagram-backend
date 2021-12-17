class CreateDogParks < ActiveRecord::Migration[6.1]
  def change
    create_table :dog_parks do |t|
      t.text :name
      t.text :url
      t.text :image_url
      t.text :address
      t.integer :zip_code
      t.text :yelp_id
      t.integer :rating

      t.timestamps
    end
  end
end

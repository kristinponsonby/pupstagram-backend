class DogParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :image_url, :address, :rating
  
end

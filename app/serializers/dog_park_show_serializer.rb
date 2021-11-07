class DogParkShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :url, :image_url
end

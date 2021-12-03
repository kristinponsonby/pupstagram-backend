class UserSerializer < ActiveModel::Serializer
    attributes :username, :id, :zip_code, :breed, :bio
    has_many :posts
end
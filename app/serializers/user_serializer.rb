class UserSerializer < ActiveModel::Serializer
    attributes :username, :id
    has_many :posts
end
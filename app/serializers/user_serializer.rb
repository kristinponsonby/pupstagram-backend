class UserSerializer < ActiveModel::Serializer
    attributes :username, :email, :zip_code
end
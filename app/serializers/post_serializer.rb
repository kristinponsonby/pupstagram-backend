class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :image
  def image
    if object.image.attached?
      {
        url: rails_blob_url(object.image)
      }
    end
  end
  has_one :user
end

class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :image, :caption, :username
  has_one :user

  def image
    if object.image.attached?
      {
        url: rails_blob_url(object.image)
      }
    end
  end


  def username
    self.object.user.username
  end

end

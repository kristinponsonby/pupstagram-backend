class ApplicationController < ActionController::API
    # skip_before_action :verify_authenticity_token

    def encode_token(user_id)
        JWT.encode({user_id: user_id}, ENV["JWT_SECRET"])
      end
end

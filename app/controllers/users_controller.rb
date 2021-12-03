class UsersController < ApplicationController

    def create 
      user = User.new(user_params)
      if user.save
        render json: {user: UserSerializer.new(user), token: encode_token(user.id)} 
      else
        render json:{errors: user.errors.full_messages.to_sentence}, status: :unprocessable_entity
      end
    end

    def index
        users = User.all
        render json: users
    end

    def show 
      user_data = User.find(params[:username])
      render json: user, serializer: UserSerializer
  end 
    
    private

    def user_params
        params.permit(:username, :email, :password, :zip_code)
    end

  
end

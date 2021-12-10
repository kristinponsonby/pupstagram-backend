class PostsController < ApplicationController
    
    def index
        posts = Post.all
        render json: posts
    end

    def create
        user_post_id = logged_in_user.id
        post = Post.create(user_id: logged_in_user.id, image: post_params[:image], caption: post_params[:caption] )
        render json: post, user: logged_in_user
    end


    def destroy 
        post = Post.find(params[:id].to_i)
        if post.user_id === logged_in_user.id
            post.destroy 
        else
          render json:{errors: post.errors.full_messages.to_sentence}, status: :unprocessable_entity
    end
end

    private

    def post_params
        params.permit(:caption, :image, :username, :id)
    end


end



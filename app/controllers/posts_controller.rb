class PostsController < ApplicationController
    
    def index
        posts = Post.all
        render json: posts
    end

    def create
        # post = logged_in_user.post.create(post_params)
        user_post_id = User.find_by(username: post_params[:username]).id
        post = Post.create(user_id: user_post_id, image: post_params[:image], caption: post_params[:caption] )
        byebug
        render json: post
    end

    private

    def post_params
        params.permit(:caption, :image, :username)
    end


end



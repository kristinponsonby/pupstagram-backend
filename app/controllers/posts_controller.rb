class PostsController < ApplicationController
    
    def index
        posts = Post.all
        render json: posts
    end

    def create
        post = logged_in_user.posts.create(post_params)
        render json: post
    end

    private

    def post_params
        params.permit(:caption, :image, :username)
    end


end

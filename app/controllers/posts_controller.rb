class PostsController < ApplicationController
    def index
        @user = User.find(param[:user_id])
        @posts = Post.where(user_id: param[@user.id])
    end

    def display
        @posts = Post.find(param[:id])
    end
end

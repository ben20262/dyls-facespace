class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find_by(id: params[:id])
    end

    def create
        @post = Post.create(title: params[:title], content: params[:content], link: params[:link], price: params[:price], seller_id: params[:seller_id])
    end

    def destroy
        
    end

end

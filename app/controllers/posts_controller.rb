class PostsController < ApplicationController

    def index
        post = Post.scrape
        
        render json: post
    end

    def create
        post = Post.create(title: params[:title], content: params[:content], link: params[:link], price: params[:price], seller_id: params[:seller_id])
    end

    def destroy
        
    end

end

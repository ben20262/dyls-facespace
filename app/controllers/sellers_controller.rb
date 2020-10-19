class SellersController < ApplicationController

    def index
        sellers = Seller.all
        render json: sellers, include: :posts
    end

    def create
        seller = Seller.create(name: params[:name], link: params[:link])
    end

end

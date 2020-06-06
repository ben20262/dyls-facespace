class SellersController < ApplicationController

    def index
        @sellers = Seller.all
    end

    def show
        @seller = Seller.find_by(id: params[:id])
    end

    def create
        @seller = Seller.create(name: params[:name], link: params[:link])
        redirect_to seller_path(@seller)
    end

    def destory

    end

end

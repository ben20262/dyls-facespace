class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def settings
        @user = User.find_by(id: params[:id])
    end

    def create
        @user = User.find_or_create_by(uid: auth['uid']) do |u|
            u.name = auth['info']['name']
            u.email = auth['info']['email']
            u.image = auth['info']['image']
        end
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    def user_posts
        @user = User.find_by(id: params[:id])
        
    end

end

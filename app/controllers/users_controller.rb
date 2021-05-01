class UsersController < ApplicationController

    def user_stories
        @current_user_stories = current_user.stories
    end
    def show
        @user = User.includes(:stories).find(helpers.current_user.id)
    end
    def update
        @user = User.find(params[:id])
        @user.admin = !@user.admin
        @user.save
        redirect_to :dashboards_index, notice: 'User Saved'
    end
end
class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def display
    @user = User.find(params[:user_id])
  end
end

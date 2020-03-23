class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users, include: :dogs
  end

  def show

    @user = User.find(params[:id])
    render json: @user, include: :dogs
  end

  def update
  end
  
end

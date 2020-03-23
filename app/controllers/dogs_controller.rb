class DogsController < ApplicationController
  def index
      @dogs = Dog.all
      render json: @dogs, include: :user
  end

  def show
      @dog = Dog.find(params[:id])
      render json: @dog, include: :user
  end

  def update
  end

end

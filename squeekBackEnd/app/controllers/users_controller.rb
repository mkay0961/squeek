class UsersController < ApplicationController

  def show
    render json: User.find(params[:id])
  end

  def create
    byebug
  end

  def destroy
    render json: User.find(params[:id]).destroy
  end

end

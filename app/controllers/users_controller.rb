class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def loginPage
    u = User.find_by(username: params[:username])
    render json: u.id
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    u = User.new(user_params)
    u.username
    u.save
    render json: u
  end

  def destroy
    render json: User.find(params[:id]).destroy
  end

  private
  def user_params
    params.require(:user).permit(:first, :last)
  end

end

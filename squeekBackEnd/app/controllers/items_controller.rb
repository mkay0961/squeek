class ItemsController < ApplicationController

  def index
    render json: Item.all
  end

  def show
    render json: Item.find(params[:id])
  end

  def create
    i = Item.find_or_create_by(item_params)
    u = User.find(params[:user_id])
    UserItem.find_or_create_by(user: u, item: i,review: params[:review])
    render json: i
  end

  def update
    byebug
  end

  def destroy
    i = Item.find(params[:id])
    UserItem.find_by(item_id: params[:id], user_id: params[:user_id]).destroy
    render json: i
  end

 private
 def item_params
   params.require(:item).permit(:name, :price)
 end

end

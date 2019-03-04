class ItemsController < ApplicationController

  def index
    render json: Item.all
  end

  def create
    byebug
    i = Item.find_or_create_by(item_params)
    u = User.find(params[:user_id])
    UserItem.find_or_create_by(user: u, item: i)
    render json: i
  end

 private
 def item_params
   params.require(:item).permit(:name, :price, :review)
 end

end

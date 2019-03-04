class ItemsController < ApplicationController

  def index
    render json: Item.all
  end

  def create
    i = Item.create(item_params)
    u = User.find(params[:user_id])
    UserItem.create(user: u, item: i)
    render json: i
  end

 private
 def item_params
   params.require(:item).permit(:name, :price, :review)
 end

end

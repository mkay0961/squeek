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
    if(!params["keywords"].nil?)
      item = Item.find(params[:id])
      if(item.keywords.nil? == true)
        newKeywords = params["keywords"]
      else
        newKeywords = item.keywords +" "+ params["keywords"]
      end
      item.update(keywords: newKeywords)
    else
      item = Item.find(params[:id])
      u = User.find(params[:user_id])
      review = UserItem.find_by(user: u, item: item)
      review.update(user_item_params)
   end
   render json: item
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

 def user_item_params
   params.permit(:current, :review)
 end

end

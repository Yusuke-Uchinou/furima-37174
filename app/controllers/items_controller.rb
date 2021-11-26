class ItemsController < ApplicationController

  def index
  end
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
     redirect_to root_path
    else
     render new_item_path
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :category_id, :state_id, :shipping_cost_id, :prefecture_id, :shipping_day_id, :image).merge(user_id: current_user.id)
  end
end

class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new 
  end 

  def create 
    item = Item.create!(item_params)
    redirect_to '/dashboard/items'
  end 

  def destroy
    item = Item.find(params[:id])
    item.destroy

    redirect_to "/dashboard/items"
  end 

private
  def item_params
    params.permit(:name, :category, :quantity)
  end
end 
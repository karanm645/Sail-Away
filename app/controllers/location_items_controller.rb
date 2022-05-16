class LocationItemsController < ApplicationController
  def index
    @items = Item.all
  end
  
  def new 

  end 

  def create 
    item_location = Item.create!(item_params)
    redirect_to '/dashboard/locations/items'
  end 

private
  def item_params
    params.permit(:name, :category, :quantity)
  end
end 
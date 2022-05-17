class LocationItemsController < ApplicationController
  def index
    @locations = Location.all
    # binding.pry
    # @items = @locations.items.all
  end
  
  def new 
    @location = Location.find(params[:location_id])
  end 

  def create 
    location = Location.find(params[:location_id])
    item = location.items.create!(item_params)
    
    redirect_to "/dashboard/locations/#{location.id}/items"
  end 

private
  def item_params
    params.permit(:name, :category, :quantity)
  end
end 
class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new 

  end 

  def create 
    location = Location.create!(location_params)
    redirect_to '/dashboard/locations'
  end 

private
  def location_params
    params.permit(:city, :state, :country)
  end
end 
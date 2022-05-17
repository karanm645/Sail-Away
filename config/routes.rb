Rails.application.routes.draw do

  resources :dashboard, only: [:index] do 
  end

  ### convert to resources
  get "/dashboard/items", to: 'items#index'
  get "/dashboard/items/new", to: 'items#new'
  post "/dashboard/items", to: 'items#create'
  delete "/dashboard/items/:id", to: 'items#destroy'
  get "/dashboard/items/:id/edit", to: 'items#edit'
  patch "/dashboard/items/:id", to: 'items#update'

  get "/dashboard/locations", to: 'locations#index'
  get "/dashboard/locations/new", to: 'locations#new'
  post "/dashboard/locations", to: 'locations#create'
  
  get "/dashboard/locations/:location_id/items", to: 'location_items#index'
  get "/dashboard/locations/:location_id/items/new", to: 'location_items#new'
  post "/dashboard/locations/:location_id/items", to: 'location_items#create'
end

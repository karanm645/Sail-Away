Rails.application.routes.draw do

  get "/dashboard", to: 'dashboard#index'
  
  get "/dashboard/items", to: 'items#index'
  get "/dashboard/items/new", to: 'items#new'
  post "/dashboard/items", to: 'items#create'
  delete "/dashboard/items/:id", to: 'items#destroy'
end

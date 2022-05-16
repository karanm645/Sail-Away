Rails.application.routes.draw do

  get "/dashboard", to: 'dashboard#index'
  get "/dashboard/items", to: 'items#index'
end

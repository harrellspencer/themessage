Rails.application.routes.draw do
  devise_for :users
resources :users
resources :churches 
resources :sermons

root 'users#index'

end

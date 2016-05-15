Rails.application.routes.draw do
  devise_for :users
resources :users
resources :churches
root 'users#home'

end

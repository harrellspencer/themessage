Rails.application.routes.draw do
resources :users
resources :churches
root 'users#index'

end

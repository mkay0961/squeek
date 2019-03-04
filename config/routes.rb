Rails.application.routes.draw do
  resources :user, only: [:show]
  resources :item, only: [:index, :create]
end

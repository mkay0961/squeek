Rails.application.routes.draw do
  resources :users, only: [:show, :create, :destroy] do
    resources :items, only: [:destroy]
  end
  resources :items, only: [:index, :show, :update, :create]

end

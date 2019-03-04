Rails.application.routes.draw do
  resources :users, only: [:show, :create] do
    resources :items, only: [:destroy]
  end
  # resources :items, only: [:index, :show, :update, :create, :destroy]

end

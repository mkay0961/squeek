Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create, :destroy] do
    resources :items, only: [:destroy, :update]
  end
  resources :items, only: [:index, :show, :create]

end

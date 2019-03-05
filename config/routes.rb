Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create, :destroy] do
    resources :items, only: [:destroy, :update]
  end
  post 'users/userLogin/:username', to: "users#loginPage"
  resources :items, only: [:index, :show, :create]

end

Rails.application.routes.draw do
  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, except: [:destroy]
  resources :favorites, only: [:index, :create, :destroy]
end

Rails.application.routes.draw do
  resources :pictures do
    collection do
      post :confirm
    end
  end
  root 'sessions#new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, except: [:destroy]
  resources :favorites, only: [:index, :create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end

Rails.application.routes.draw do
  resources :blogs do
    collection do
      get :top
    end
  end
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
end

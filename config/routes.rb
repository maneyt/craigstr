Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :posts, only: [:index, :new, :create]
  root to: "dashboard#show"
  resources :regions, only: [:create, :show] do
    resources :categories, only: [:create]
  end
  resources :categories, only: [:show]
end

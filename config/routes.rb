Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  root to: "dashboard#show"
  resources :regions, only: [:create, :show]
end

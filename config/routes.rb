Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :posts, only: [:index, :show] do
    resources :spams, only: [:create]
  end
  root to: "regions#index"
  resources :posts, only: [:index, :show, :destroy]
  resources :categories, only: [:show] do
    resources :posts, only: [:new, :create]
  end
  resources :regions, only: [:create, :show] do
    resources :categories, only: [:create]
  end
  resources :categories, only: [:show]
  resource :dashboard, only: [:show]
  resource :admin_dashboard, only: [:show]
end

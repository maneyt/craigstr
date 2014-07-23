Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :posts, only: [:index, :show, :update, :destroy, :new, :create] do
    resources :spams, only: [:create]
    resources :post_responses, only: [:create]
  end
  resources :categories, only: [:show, :new] do
    resources :posts, only: [:new]
  end
  resources :regions, only: [:create, :show] do
    resources :categories, only: [:create]
  end
  resources :categories, only: [:show]
  resource :dashboard, only: [:show]
  resource :admin_dashboard, only: [:show]

  root to: "regions#index"
end

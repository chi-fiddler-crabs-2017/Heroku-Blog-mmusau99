Blog::Application.routes.draw do
  devise_for :users
  get "welcome/index"

  resources :articles do
    resources :comments
  end
  resources :users 
  root "welcome#index"


end

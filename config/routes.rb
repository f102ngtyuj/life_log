Rails.application.routes.draw do
  get 'comments/index'
  get 'characters/index'
  devise_for :users
  root to: "comments#index"
  resources :users, only: [:new, :create, :show] do
   resources :characters, only: [:index, :create, :new]
  end

  resources :comments, only: [:index, :new, :create, :show]
  
end

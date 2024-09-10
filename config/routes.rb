Rails.application.routes.draw do

  resources :comments do
    resource :like, only: [:create, :destroy]
  end
  

  devise_for :users
  resources :messages do
    resources :comments

  end
  root 'messages#index'
end

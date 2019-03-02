Rails.application.routes.draw do
  get 'likes/create'

  get 'likes/destroy'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'tweets#index'
  resources :tweets do
    resources :comments, only: [:create, :destroy]
  end
  resources :likes, only: [:create, :destroy]
end

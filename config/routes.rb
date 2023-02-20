Rails.application.routes.draw do
  
  # get 'coupons/index'
  get 'home/index'
  get 'home/profile'
  get 'categories/index'
  devise_for :users
  resources :users do
   resources :coupons
  end
  resources :coupons do
    resources :feedbacks
  end
  resources :categories

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "home#index"
  post '/likes' => 'likes#like', as: :like_create
  post '/dislikes' => 'likes#dislike', as: :dislike_create
end

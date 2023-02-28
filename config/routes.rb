Rails.application.routes.draw do

  # get 'coupons/index'
  get "home/index", to: "home#index"
  get "home/profile"
  get "home/contact"
  get "home/about"
  get "categories/index"
  resources :contacts, only: [:new]
  devise_for :users
  resources :users do
    get "coupons/update_user_coins"
    resources :coupons
  end
  get "/search", to: "coupons#search"
  resources :coupons do
    resources :feedbacks
  end
  resources :categories

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "home#index"
  post "/likes" => "feedbacks#like"
  post "/dislikes" => "feedbacks#dislike"
end

Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  # get 'coupons/index'
  get "home/index", to: "home#index"
  get "home/profile"
  get "home/about"
  get "home/faq"
  get "categories/index"
  resources :contacts, only: [:new, :create]
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

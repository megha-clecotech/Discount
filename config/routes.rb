Rails.application.routes.draw do
  
  # get 'coupons/index'
  get 'home/index'
  get 'home/profile'
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
  
end

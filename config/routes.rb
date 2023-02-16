Rails.application.routes.draw do
  # get 'coupons/index'
  devise_for :users 
  resources :users do
   resources :coupons
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root "coupons#index"
  # Defines the root path route ("/")
  # root "articles#index"
  
  

end

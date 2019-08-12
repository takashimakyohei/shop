Rails.application.routes.draw do
 
  get 'products/new'
  get 'sessions/new'
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#index"
  
  resources :users
  resources :products 

  

  get "login", to:"sessions#new"
  post "login", to: "sessions#create"
  delete "logout",to:"sessions#destroy"
  
  get "user_home",to:"products#home"
  
  get 'carts/index'
  post '/carts', to: 'carts#create'
  
  get '/carts/:id', to: 'carts#show'
  
 
end
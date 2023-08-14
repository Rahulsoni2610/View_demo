Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :books

  resources :users

  # map.resources :users ,:collection => { :sign_in => :get }
  # get '/sign_in', to: 'sign_in#users'
end

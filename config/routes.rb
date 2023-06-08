Rails.application.routes.draw do
  # root to: "recipes#index"
  root to: "sessions#new"
  get '/home', to: "recipes#home"
  get '/sign-up', to: "users#new"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  resources :categories
  resources :recipes
  resources :users, except: [:new]
end

Rails.application.routes.draw do
  get '/sign-up', to: "users#new"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  root to: "recipes#home"
  resources :categories
  resources :recipes
  resources :users, except: [:new]
end

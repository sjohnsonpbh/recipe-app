Rails.application.routes.draw do
  resources :categories
  root to: "recipes#home"
  resources :recipes
end

Rails.application.routes.draw do
  root to: "recipes#home"
  resources :recipes
end

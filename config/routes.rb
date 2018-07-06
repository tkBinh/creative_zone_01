Rails.application.routes.draw do

  get "products/new"
  get "products/edit"
  get "/poll", to: "products#poll"
  get "/product", to: "products#show"
  get "/make_vote", to: "vote_options#new"
  get "vote_options/show"
  root "static_pages#home"
  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "users/new"
  get "users/index"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :users
  resources :categories, only: :show

end

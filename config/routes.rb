Rails.application.routes.draw do
  resources :markers
  get 'search',to:"markers#search"
  get 'home/about'
  get 'home/index'
  get 'home/index2'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

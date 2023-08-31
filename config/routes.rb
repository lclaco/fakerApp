Rails.application.routes.draw do
  get 'beers/index'
  get 'beers/create'
  get 'beers/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "beers" => "beers#create"
  # Defines the root path route ("/")
  # root "articles#index"
  root 'beers#index'
end

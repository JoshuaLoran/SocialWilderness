Rails.application.routes.draw do
  resources :trips
  get '/destinations/search', to: 'destinations#search'
  get '/users/search', to: 'users#search'
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  resources :destinations
  resources :reviews
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

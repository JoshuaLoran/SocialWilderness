Rails.application.routes.draw do

  get '/destinations/search', to: 'destinations#search'
  get '/users/search', to: 'users#search'
  get '/users/browse', to: 'users#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/users/:id/profile', to: 'users#profile'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :destinations, only: [:show, :index]
  resources :reviews
  resources :trips
  resources :relationships, only: [:index, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

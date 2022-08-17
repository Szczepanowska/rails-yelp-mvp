Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/restaurants', to: 'restaurants#index'
  # get '/restaurants/new', to: 'restaurants#new'
  # post '/restaurants', to: 'restaurants#create'
  # get '/restaurants/:id', to: 'restaurants#show'
  # get '/restaurants/:id/reviews/new', to: 'reviews#new'
  # post '/restaurants/:id/reviews', to: 'reviews#show'
  # Defines the root path route ("/")
  # root "articles#index"
    resources :restaurants do
      resources :reviews, only: [:new, :create]
    end
    resources :reviews, only: [:destroy]
  end

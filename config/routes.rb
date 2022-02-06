Rails.application.routes.draw do
  
  resources :room_amenities, only: [:index, :show]
  resources :amenities, only: [:index, :show]
  resources :rooms, only: [:index, :show]
  resources :reservations
  resources :properties, only: [:index, :show]
  resources :users
  # rails g resources around_town ->resources :around_town, only: [:index, :show]

  post "/login", to: "sessions#login" #200 OK
  delete "/logout", to: "sessions#logout" #204 No Content
  get "/me", to: "users#show" #200 OK
  post "/signup", to: "users#create" #201 Created
  delete "/me", to: "users#destroy" #204 No Content
  patch "/signup", to: "users#update" #200 OK / BUT DID NOT WORK LAST TIME
  post "/reserve", to: "reservations#create"
  delete "/cancel", to: "reservations#destroy" 
  patch "/update", to: "reservations#update" 
  get "/", to: "properties#show" 

  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end

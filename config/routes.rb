Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :users, except: [:new, :create]

get '/signup', to: "users#new"
post '/signup', to: "users#create"
get '/home', to: "users#show", as: "home"
get '/login', to: "sessions#new", as: "login"
post '/login', to: "sessions#create"
post '/logout', to: "sessions#destroy"

end

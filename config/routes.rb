Rails.application.routes.draw do
  resources :offers
  resources :drivers

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get '/register', to: 'users#new' 
  post '/users', to: 'users#create'

  # get '/drivers/login' to: 'sessions#new'
  # post 'drivers/sessions', to: 'sessions#create'
  # get '/drivers/logout' to: 'sessions#destroy'
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy' 

  root 'welcome#home'

end

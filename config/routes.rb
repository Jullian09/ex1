Rails.application.routes.draw do

  root 'advertisements#index'

  get '/users/index', to: 'users#index'

  #Pour l'inscription de l'utilisateur
  get '/user/new', to: 'users#new', as: 'user_new'
  post '/user/new', to: 'users#create'

  #Pour la connextion de l'utilisateur
  get '/user/login', to: 'users#login', as: 'user_login'
  post '/user/login', to: 'users#check'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

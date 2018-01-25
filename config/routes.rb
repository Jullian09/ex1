Rails.application.routes.draw do

  root 'advertisements#index'

  get '/users/index', to: 'users#index'
  get '/user/new', to: 'users#new', as: 'user_new'
  post '/user/new', to: 'users#create'
  get '/user/login', to: 'users#login', as: 'user_login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

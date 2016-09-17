Rails.application.routes.draw do
  root 'campfound#index'

  get '/dashboard', to: 'users#show'
  resources :users, only: [:new, :create]

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :session, only: [:create, :destroy]
  resources :festivals, only: [:index, :show]
end

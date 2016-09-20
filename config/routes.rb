Rails.application.routes.draw do
  root 'campfound#index'

  get '/dashboard', to: 'users#show'
  resources :users, only: [:new, :create]

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  resources :session, only: [:create, :destroy]
  resources :festivals, only: [:index, :show, :create]

  # get "*any", via: :all, to: "errors#not_found"
end

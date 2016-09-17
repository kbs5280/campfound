Rails.application.routes.draw do
  root 'campfound#index'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :session, only: [:create, :destroy]
  resources :festivals, only: [:index, :show]
end

Rails.application.routes.draw do
  root 'campfound#index'

  resources :festivals, only: [:index, :show]
end

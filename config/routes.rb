Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "users#home"

  resources :destinations, only: [:index, :show]

  resources :books, only: [:index, :show]

  resources :users

  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy', as: 'logout'

end

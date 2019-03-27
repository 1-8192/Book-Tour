Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "users#home"

  resources :destinations, only: [:index, :show]

  resources :books, only: [:index, :show]

  resources :users

  resources :reviews

  resources :reading_lists

  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'

end

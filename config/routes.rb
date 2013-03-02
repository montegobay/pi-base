require 'gollum/frontend/app'

Brubeck::Application.routes.draw do
  devise_for :users

  resources :spaces, :properties, :traits, only: [:index, :show]

  get 'search', to: 'formulae#search'

  root to: 'application#root'
end

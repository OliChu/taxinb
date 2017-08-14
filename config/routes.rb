Rails.application.routes.draw do
  devise_for :users
  root to: 'animals#index'

  resources :animals
end

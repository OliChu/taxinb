Rails.application.routes.draw do
  devise_for :users
  root to: 'animals#index'

  resources :animals do
    resources :bookings
  end
end

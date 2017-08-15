Rails.application.routes.draw do
  resources :users, only: :show

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  root to: 'animals#index'

  resources :animals do
    resources :bookings
  end
end

Rails.application.routes.draw do
  get 'profile', to: 'users#show', as: 'profile'
  get 'profile/bookings', to: 'users#bookings'
  get 'profile/animals', to: 'users#animals'


  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  root to: 'animals#index'

  resources :animals do
    resources :bookings
  end
end

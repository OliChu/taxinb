Rails.application.routes.draw do
  get 'profile', to: 'users#show', as: 'profile'
  get 'profile/bookings', to: 'users#bookings'
  get 'profile/animals', to: 'users#animals'

  # resources :users, only: [:show] do
  #   resources :reviews, only: [:new, :create]
  # end


  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  root to: 'pages#home'

  resources :animals do
    resources :bookings do
      resources :reviews, only: [:new, :create]
  end
  end



end

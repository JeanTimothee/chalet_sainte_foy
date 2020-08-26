Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :chalets, only: [:show] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:destroy]
end

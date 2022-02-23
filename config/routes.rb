Rails.application.routes.draw do
  devise_for :users
  root to: 'astronauts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :astronauts, only: [:show] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show]
end

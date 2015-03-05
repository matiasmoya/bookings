Rails.application.routes.draw do
  resources :bookings
  resources :schedules
  resources :fields
  resources :venues

  devise_for :owners
  devise_for :users

  get '/search', to: 'home#search'

  root 'home#index'
end

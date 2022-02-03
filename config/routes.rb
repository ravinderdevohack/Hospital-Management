Rails.application.routes.draw do
  get 'hospitals/index'
  devise_for :users, controlllers: { sessions: 'users/sessions', omniauth_callbacks: 'users/omniauth'}
  resources :appointments
  resources :doctors
  resources :users

  root 'hospitals#index'
end

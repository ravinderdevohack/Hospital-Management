Rails.application.routes.draw do
  devise_for :employees, controlllers: { sessions: 'employees/sessions' }
 
  # devise_for :users, controlllers: { sessions: 'users/sessions', omniauth_callbacks: 'users/omniauth'}
  resources :appointments
  resources :doctors
  resources :employees do
    collection do
      get 'doctor'
    end
  end

  get 'hospitals/index'
  root 'hospitals#index'
end

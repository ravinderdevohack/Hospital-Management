Rails.application.routes.draw do

  devise_for :employees, controlllers: { sessions: 'employees/sessions' }
  devise_for :users

  # devise_for :users, controlllers: { sessions: 'users/sessions', omniauth_callbacks: 'users/omniauth'}
  resources :appointments
  resources :doctors
  resources :patients
  resources :wards
  resources :users
  resources :services
  resources :specialists
  resources :syndromes
  resources :departments
  resources :employees do
    collection do
      get 'doctor'
    end
  end


  # get 'doctor', to: 'employees#find_doctor'
  get 'appointment_doctor', to: 'appointments#doctor'
  get 'patient_doctor', to: 'patients#doctor'
  get 'employees/:id/edit_profile', to: 'employees#edit_profile', as: 'edit_profile'
  # patch 'employees/:id', to: 'employees#update_profile', as: 'update_profile'

  get 'hospitals/index'
  root 'hospitals#index'
end

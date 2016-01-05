Rails.application.routes.draw do
  devise_for :employees
  resources :employees, only: [:index, :show]
  resources :expense_types
  resources :expenses
  resources :occurrences
  resources :departments

  get '/employee/profile', to: 'employees#show'

  root 'expenses#index'
end

Rails.application.routes.draw do
  resources :employees, only: [:index,]
  devise_for :employees
  resources :expense_types
  resources :expenses
  resources :occurrences
  resources :departments

  get '/employee/profile', to: 'employees#show'

  root 'expenses#index'
end

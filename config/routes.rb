Rails.application.routes.draw do
  devise_for :employees
  resources :employees
  resources :expense_types
  resources :expenses
  resources :occurrences

  get '/profile', to: 'employees#show'

  root 'expenses#index'
end

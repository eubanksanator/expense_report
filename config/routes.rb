Rails.application.routes.draw do
  devise_for :employees
  resources :employees
  resources :expense_types
  resources :expenses
  resources :occurrences

  root 'expenses#index'
end

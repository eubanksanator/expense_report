Rails.application.routes.draw do
  resources :expense_types
  resources :expenses

  resources :occurrences

  root 'expenses#index'
end

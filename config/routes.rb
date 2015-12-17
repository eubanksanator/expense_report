Rails.application.routes.draw do
  resources :expenses

  resources :occurrences

  root 'expenses#index'
end

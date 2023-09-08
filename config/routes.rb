Rails.application.routes.draw do
  root "home#index"
  resources :groups
  resources :users
end

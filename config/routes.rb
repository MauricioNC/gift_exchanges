Rails.application.routes.draw do
  root "home#index"
  resources :groups
  resources :users, except: %i[ new create ]

  get ":group_link/users/new", to: "users#new"
  post ":group_link/users", to: "users#create", as: "new_user"
  get ":user_link/draw-participants", to: "draw_participants#index"
end

Rails.application.routes.draw do
  root "home#index"
  resources :groups
  resources :users

  get ":user_link/draw-participants", to: "draw_participants#index"
end

Rails.application.routes.draw do
  resources :protests
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "protests#index"
end

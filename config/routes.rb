Rails.application.routes.draw do
  root "pages#index"

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
	resources :seat_classes
	resources :seats
	resources :flights
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

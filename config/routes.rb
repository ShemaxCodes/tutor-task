Rails.application.routes.draw do
  devise_for :users
  root to: "welcome#index"

  get "/users/signup", to: "devise/registrations#new"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end

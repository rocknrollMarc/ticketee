Rails.application.routes.draw do


  get "/signin", to: "sessions#new"

  post "/signin", to: "sessions#create"

  get 'tickets/new'

  root "projects#index"

  resources :projects do
    resources :tickets
  end

  resources :users
end

Rails.application.routes.draw do

  get 'tickets/new'

  root "projects#index"

  resources :projects do
    resources :tickets
  end
end

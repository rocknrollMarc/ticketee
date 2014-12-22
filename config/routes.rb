Ticketee::Application.routes.draw do
  root 'project#index'

  resources :projects
end

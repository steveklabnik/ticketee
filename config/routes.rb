Ticketee::Application.routes.draw do
  get "users/new"
  get "users/create"
  get "users/show"
  root "projects#index"

  resources :projects do
    resources :tickets
  end

	resources :users
end

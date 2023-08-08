Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"

  resources :users, only: [:show]
  resources :lists
  resources :items
  resources :reports


  resources :lists, except: [:index] do
    resources :report
  end

  resources :reports do
    resources :items
  end

end

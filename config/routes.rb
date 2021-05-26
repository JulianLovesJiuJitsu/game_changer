Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :games, only: [:index, :new, :create] do
    resources :rentals, only: [:new, :create, :show]
  end

  resources :rentals, only: [:index, :destroy]

  resources :games, only: [:index, :show, :new, :create]

  get 'dashboard', to: "pages#dashboard"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

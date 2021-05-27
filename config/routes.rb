Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :games, only: [:index, :new, :create] do
    resources :rentals, only: [:new, :create, :show]
  end

  resources :rentals, only: [:destroy]

  resources :games, only: [:index, :show, :new, :create]

  get 'my_rentals', to: "pages#my_rentals"
  get 'my_games', to: "pages#my_games"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

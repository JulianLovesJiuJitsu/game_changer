Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'

<<<<<<< HEAD
  resources :games, only: [:index, :new, :create] do
    resources :rentals, only: [:new, :create, :show]
  end


  resources :rentals, only: [:index, :destroy]
=======
  resources :games, only: [:index, :new, :create, :show]
  # get 'games/:id', to: 'games#show'
>>>>>>> master
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

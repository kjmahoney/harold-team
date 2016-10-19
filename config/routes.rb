Rails.application.routes.draw do
  # get 'memberships/new'
  #
  # get 'memberships/create'
  #
  # get 'users/index'

  devise_for :users
  root to: 'teams#index'

  resources :users, only: [:index]

  resources :memberships, only: [:new, :create]


  resources :teams do
  resources :shows do
    resources :notes
    resources :beats do
      resources :notes
    end
    end
  end
end

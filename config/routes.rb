Rails.application.routes.draw do
  # get 'memberships/new'
  #
  # get 'memberships/create'
  #
  # get 'users/index'
  # get '/users/sign_out'
  # root to: 'teams#index'

  devise_for :users
  root to: 'teams#index'

  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
end


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

Rails.application.routes.draw do
  # NHO: reminder to remove unused / commented out code!

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


  resources :users, only: [:index] # NHO: is this line being used?

  # NHO: this is fine, but feel like these routes belong nested under team
  # for easy access to which team a user is joining...
  resources :memberships, only: [:new, :create]


  resources :teams do
    resources :shows do
      resources :notes
      resources :beats do
        # NHO: looks like this is nested 4 layers deep, in that case it might help to seperate out
        # into seperate resource routes
        resources :notes
      end
    end
  end
end

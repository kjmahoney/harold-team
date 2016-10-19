Rails.application.routes.draw do

  devise_for :users
  root to: 'teams#index'
  resources :teams do
  resources :shows do
    resources :beats do
      resources :notes
    end
    end
  end
end

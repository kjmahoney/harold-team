Rails.application.routes.draw do

  resources :shows do
    resources :beats do
      resources :notes
    end
  end
end

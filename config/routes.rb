Rails.application.routes.draw do
  get 'notes/index'

  get 'notes/show'

  get 'notes/new'

  get 'notes/edit'

  get 'beats/index'

  get 'beats/show'

  get 'beats/new'

  get 'beats/edit'

  get 'shows/index'

  get 'shows/show'

  get 'shows/new'

  get 'shows/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

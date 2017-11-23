Rails.application.routes.draw do
  resources :militaries
  resources :hierarchies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'hierarchies#index'

end

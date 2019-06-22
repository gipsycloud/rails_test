Rails.application.routes.draw do
  get 'sessions/new'
  get 'site/home'

  resources :posts
  resources :places, except: [:update, :edit, :destroy]
  resources :distances, only: [:new, :create]

  root 'places#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

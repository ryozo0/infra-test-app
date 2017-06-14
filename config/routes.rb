Rails.application.routes.draw do

  get 'healthcheck', to: 'healthcheck#index'
  devise_for :users
  root "blogs#index"
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

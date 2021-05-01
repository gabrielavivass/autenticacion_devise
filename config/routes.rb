Rails.application.routes.draw do
  get 'dashboards/index'
  get 'users/show'
  patch 'users/:id', to: 'users#update', as: 'users'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :stories
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

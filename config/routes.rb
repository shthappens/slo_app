Rails.application.routes.draw do
  get 'slo_app/index'

  root "slo_app#index"

  resources :users, only: [:index]
  devise_for :users


end

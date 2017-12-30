Rails.application.routes.draw do
  get 'slo_app/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "slo_app#index"

end

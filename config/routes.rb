Rails.application.routes.draw do
  devise_for :users
  root 'boards#index'
  resources :boards, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

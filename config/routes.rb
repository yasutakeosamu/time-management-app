Rails.application.routes.draw do
  get 'tasks/index'
  devise_for :users
  root 'boards#index'
  resources :boards, only: [:create] 
  resources :tasks, only: [:index, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

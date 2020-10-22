Rails.application.routes.draw do
  get 'tasks/index'
  devise_for :users
  root 'boards#index'
  resources :boards, only: [:create, :destroy] do
    get 'tasks/:id', to: 'tasks#check'
  end
  resources :tasks, only: [:index, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

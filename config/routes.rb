Rails.application.routes.draw do
  root to: 'sessions#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'students#new'
  resources :students, only: [:index,:show, :new, :create, :edit, :update, :destroy]
  resources :subjects do
    resources :fields, only: [:index, :new, :create]
  end
  resources :fields, only: [:show, :edit, :update, :destroy]
  resources :ckeck_tests, only: [:index,:show, :new, :create, :edit, :update, :destroy]
end

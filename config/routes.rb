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

  resources :fields do
    resources :check_tests, only: [:index, :new, :create]
  end

  resources :check_tests, only: [:show, :edit, :update, :destroy]

  resources :check_tests do
    resources :check_test_sentences, only: [:index, :new, :create]
  end

  resources :check_test_sentences, only: [:show, :edit, :update, :destroy]

  resources :check_test_sentences do
    resources :check_test_answers, only: [:index, :new, :create]
    resources :check_test_options, only: [:index, :new, :create]
  end

  resources :check_test_options, only: [:show, :edit, :update, :destroy]

  resources :check_test_answers, only: [:show, :edit, :update, :destroy]
  
  get '答える', to: 'check_test_answers#new'

end

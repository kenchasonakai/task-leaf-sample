Rails.application.routes.draw do
  get 'sessions/new'
  past 'sessions/create'
  namespace :admin do
    resources :users
  end
  root to: 'tasks#index'
  resources :tasks
end

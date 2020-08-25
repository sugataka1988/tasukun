Rails.application.routes.draw do
  resources :task_contents
  resources :labels
  resources :deliveries
  resources :tasks
  resources :users
  root 'tasks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

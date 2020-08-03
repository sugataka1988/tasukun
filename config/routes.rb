Rails.application.routes.draw do
  resources :labels
  resources :deliveries
  resources :tasks
  resources :users
  resources :task_contents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

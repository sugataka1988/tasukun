Rails.application.routes.draw do
  root to: redirect('/tasks')
  get 'home/top'
  get 'tasks/index'
  get 'users/index'
  get 'deliveries/index'
  resources :deliveries
  resources :tasks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
<<<<<<< HEAD
  root to: redirect('/tasks')
  get 'home/top'
  get 'tasks/index'
  get 'users/index'
  get 'deliveries/index'
=======
  resources :task_contents
>>>>>>> origin
  resources :deliveries
  resources :tasks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get "labels" => "labels#index"
  get "labels/new" => "labels#new"
  get "labels/:id" => "labels#show"
  
  post "labels/create" => "labels#create"
  
  root to: redirect('/tasks')
  resources :deliveries
  resources :tasks
  resources :users
  resources :task_contents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

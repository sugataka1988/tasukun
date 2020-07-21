Rails.application.routes.draw do
#  get "labels" => "labels#index"
#  get "labels/new" => "labels#new"
#  get "labels/:id" => "labels#show"
#  get "labels/:id/edit" => "labels#edit"
  
#  post "labels/create" => "labels#create"
#  post "labels/:id/update" => "labels#update", as: :lable_update
#  post "labels/:id/destroy" => "labels#destroy"
  
  root to: redirect('/tasks')
  # TODO: atode yaru
  resources :labels
  resources :deliveries
  resources :tasks
  resources :users
  resources :task_contents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

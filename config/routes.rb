Rails.application.routes.draw do
  root to: 'tasks#index'
  post "tasks/create" => "tasks#create"
  resources :tasks
end

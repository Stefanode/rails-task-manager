Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # CRUD routing

  # Read all tasks
  get "tasks", to: "tasks#index"
  root to: 'tasks#index', as: :index
  # Read one task

  # Create one task
  get "tasks/new", to: "tasks#new", as: :new
  post "tasks", to: "tasks#create"

  get "tasks/:id", to: "tasks#show", as: :task
  # update one task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"
  # delete one task
  delete "tasks/:id", to: "tasks#destroy", as: :delete
end

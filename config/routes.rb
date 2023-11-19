Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # See all tasks
  root to: "tasks#index"

  # Create a tasks
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # See details about one tasks
  get "tasks/:id", to: "tasks#show", as: :task

  # Update a tasks
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"


  # Destroy a tasks
  delete "tasks/:id", to: "tasks#destroy"

end

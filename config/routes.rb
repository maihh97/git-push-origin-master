Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Show all the tasks
  get "tasks", to: "tasks#index"
  # Show a task
  get "tasks/:id", to: "tasks#show", as: :task
end

Rails.application.routes.draw do
  get 'student_todos/index'
  get 'details/index'
  get 'accesses/index'
  get 'users/login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  Rails.application.routes.draw do
  get 'student_todos/index'
  get 'details/index'
  get 'accesses/index'
    get '', to: 'todos#index'
    get 'todos', to: 'todos#index'
    post 'todos', to: 'todos#addTodo'
    delete 'todos/:id', to: 'todos#deleteTodo'
  end
end

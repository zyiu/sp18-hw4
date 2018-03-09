Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  post "todos/create", to: "todos#create", as: "create_todo"
  get "todos/new", to: "todos#new", as: "new_todo"
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

    get "/tasks" => "tasks#index"
    post "/tasks" => "tasks#create"
    get "/tasks/:id" => "tasks#show"
    patch "/tasks/:id" => "tasks#update"
    delete "/tasks/:id" => "tasks#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

  # Defines the root path route ("/")
  # root "posts#index"
end

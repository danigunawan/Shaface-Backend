Rails.application.routes.draw do
  # resources :actors
  post '/edituser', to: "users#update"
  post '/actors', to: "actors#create"
  post '/signup', to: "users#create"
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
end

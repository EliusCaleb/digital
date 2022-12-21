Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/signup", to: "teachers#create"
  get "/me", to: "teachers#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  

  resources :students
end

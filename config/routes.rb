Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "healthz" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  # root "articles#index"
end

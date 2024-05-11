Rails.application.routes.draw do
  # basic
  get "basic", to: "basic#index"
  get "basic/file", to: "basic#get_file"
  get "basic/format", to: "basic#format"
  get "basic/refresh", to: "basic#refresh"
  get "basic/cache", to: "basic#cache"

  # cookies
  get "cookies", to: "cookies#index"
  get "cookies/permanent", to: "cookies#parmanent"
  get "cookies/delete", to: "cookies#delete"

  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", :as => :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

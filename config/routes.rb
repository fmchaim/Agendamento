Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check
  get "/dashboard", to: "users#show", as: :user_profile

  resources :patients
  resources :doctors
  resources :appointments
  resources :calendars

end

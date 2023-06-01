Rails.application.routes.draw do
  namespace :admin do
      resources :customers
      resources :adoption_applications
      resources :users

      root to: "customers#index"
    end
  devise_for :users
  get "feed_homeless_pets/new"
  get "recurring_donations/new"
  get "one_time_donations/new"
  get "one_time_donations/cancel"
  get "one_time_donations/success"
  get "vaccinate_pets/new"
  get "stop_overpopulation/new"
  
  root "pages#index"

  # All routes for the pages controller
  get "/adopting", to: "pages#adopting"
  get "/our-dogs", to: "pages#ourdogs"
  get "/our-cats", to: "pages#ourcats"
  get "/foster", to: "pages#foster"
  get "/about-us", to: "pages#aboutus"
  get "/contact-us", to: "pages#contactus"
  get "/faq", to: "pages#faq"
  get "/donate", to: "pages#donate"
  get "/volunteer", to: "pages#volunteer"
  get "/events", to: "pages#events"
  get "/fundraising", to: "pages#fundraising"
  get "/wishlist", to: "pages#wishlist"
  get "/wags-wiki", to: "pages#wagswiki"
  get "/amazon-smile", to: "pages#amazonsmile"

  # Send contact email path
  post "/send_email", to: "contact#send_email", as: "send_email"

  resources :one_time_donations do
    get :cancel
    get :success
    get :new
  end

  resources :adoption_applications

  get "/recurring_donations/new", to: "recurring_donations#new", as: "new_recurring_donation"
  get "/recurring_donations/success", to: "recurring_donations#success", as: "success_recurring_donations"
end

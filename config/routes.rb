Rails.application.routes.draw do
  namespace :admin do
      resources :customers
      resources :adoption_applications
      resources :users
      resources :events

      root to: "events#index"
  end

  devise_for :users

  resources :one_time_donations, :recurring_donations, :feed_homeless_pets, :vaccinate_pets, :stop_overpopulations, only: [:new, :cancel] do
    collection do
      get :success
    end
  end

  resources :donate_dog_beds, only: [:new, :cancel] do
    collection do
      get :success
    end
  end
  
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

  resources :adoption_applications
end

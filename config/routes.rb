Rails.application.routes.draw do
  get 'one_time_donations/new'
  get 'one_time_donations/cancel'
  get 'one_time_donations/success'
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
  post '/send_email', to: 'contact#send_email', as: 'send_email'

  post "/donate", to: "one_time_donations#new"
end

Rails.application.routes.draw do
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
end

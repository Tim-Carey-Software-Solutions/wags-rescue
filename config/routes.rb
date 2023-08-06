# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :customers
    resources :adoption_applications
    resources :users
    resources :events

    root to: 'events#index'
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_scope :user do
    delete 'sign_out', to: 'devise/sessions#destroy', as: :destroy_google_user_session
  end

  resources :one_time_donations, :recurring_donations, :feed_homeless_pets, :vaccinate_pets, :stop_overpopulations,
            only: [:new] do
    collection do
      get :success
      get :cancel
    end
  end

  resources :donate_dog_beds, only: [:new] do
    collection do
      get :success
      get :cancel
    end
  end

  resources :donate_dog_beds, only: [] do
    collection do
      get :small_bed
      get :large_bed
      get :cancel
      get :success
    end
  end

  resources :donate_dog_bowls, only: [] do
    collection do
      get :small_bowl
      get :large_bowl
      get :cancel
      get :success
    end
  end

  resources :donate_dog_collars, only: [] do
    collection do
      get :small_collar
      get :large_collar
      get :cancel
      get :success
    end
  end

  resources :donate_dog_crates, only: [] do
    collection do
      get :small_crate
      get :large_crate
      get :cancel
      get :success
    end
  end

  resources :donate_dog_leashes, only: [] do
    collection do
      get :slip_leash
      get :clip_leash
      get :cancel
      get :success
    end
  end

  resources :donate_dog_toys, only: [] do
    collection do
      get :small_toy
      get :large_toy
      get :success
      get :cancel
    end
  end

  resources :donate_puppy_pads, only: [:new] do
    collection do
      get :success
      get :cancel
    end
  end

  resources :donate_dog_treats, only: [:new] do
    collection do
      get :success
      get :cancel
    end
  end

  root 'pages#index'

  # All routes for the pages controller
  get '/adopting', to: 'pages#adopting'
  get '/our-dogs', to: 'pages#ourdogs'
  get '/our-cats', to: 'pages#ourcats'
  get '/foster', to: 'pages#foster'
  get '/about-us', to: 'pages#aboutus'
  get '/contact-us', to: 'pages#contactus'
  get '/faq', to: 'pages#faq'
  get '/donate', to: 'pages#donate'
  get '/volunteer', to: 'pages#volunteer'
  get '/events', to: 'pages#events'
  get '/fundraising', to: 'pages#fundraising'
  get '/wishlist', to: 'pages#wishlist'
  get '/wags-wiki', to: 'pages#wagswiki'
  get '/amazon-smile', to: 'pages#amazonsmile'

  # Send contact email path
  post '/send_email', to: 'contact#send_email', as: 'send_email'

  resources :adoption_applications
  resources :foster_applications
  get 'login', to: 'logins#new'
  get 'login/create', to: 'logins#create', as: :create_login
end

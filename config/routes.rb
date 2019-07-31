Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :complaints

  resources :cities, only: [:show]

  resources :types, only: [:show]

  resources :users # Masha created thos route to be able to see the profile that is does not belong to the current user

  post "upvote", to: "complaints#upvote", as: :upvote

  post 'basket', to: 'users#basket', as: :basket

  get 'profile', to: 'pages#profile', as: :profile
  #get 'user_profile', to: 'pages#user_profile', as: :user_profile
  get 'supermap', to: 'pages#supermap', as: :supermap

  get "/complaints/:complaint_id/mail", to: 'pages#mail', as: :mail

  get 'emails', to: 'pages#emails', as: :emails

  get 'create_email', to: 'pages#create_email', as: :create_email
end

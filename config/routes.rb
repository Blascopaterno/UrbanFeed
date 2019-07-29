Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :complaints

  resources :users # Masha created thos route to be able to see the profile that is does not belong to the current user

  post "upvote", to: "complaints#upvote", as: :upvote

  get 'profile', to: 'pages#profile', as: :profile
  #get 'user_profile', to: 'pages#user_profile', as: :user_profile
  get 'supermap', to: 'pages#supermap', as: :supermap

  get 'emails', to: 'pages#emails', as: :emails
end

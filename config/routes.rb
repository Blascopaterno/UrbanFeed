Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :complaints

  put "upvote", to: "complaints#upvote", as: :upvote

  get 'profile', to: 'pages#profile', as: :profile
  get 'user_profile', to: 'pages#user_profile', as: :user_profile
end

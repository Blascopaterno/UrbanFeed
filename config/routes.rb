Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :complaints

  get 'profile', to: 'pages#profile', as: :profile

end

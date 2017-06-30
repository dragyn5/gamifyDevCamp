Rails.application.routes.draw do
  resources :lessons
  get 'pages/welcome'
  get 'pages/achievement'
  post 'pages/point'
  root to: 'pages#welcome'
  devise_for :users
  root to: 'pages#welcome'
end


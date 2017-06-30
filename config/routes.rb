Rails.application.routes.draw do
  resources :lessons
  get 'pages/welcome'

  get 'pages/achievement'

  devise_for :users
  root to: 'pages#welcome'
end


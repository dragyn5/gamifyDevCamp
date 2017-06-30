Rails.application.routes.draw do
  resources :lessons
  get 'pages/welcome'

  get 'pages/achievement'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

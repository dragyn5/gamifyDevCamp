Rails.application.routes.draw do # => NameError: uninitialized constant Rails
  resources :lessons
  get 'pages/welcome'

  get 'pages/achievement'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#welcome'
end

# ~> NameError
# ~> uninitialized constant Rails
# ~>
# ~> /var/folders/1f/jyxg2bxd7zz5y_l9411gw9t40000gn/T/seeing_is_believing_temp_dir20170630-58812-1m8ku8z/program.rb:1:in `<main>'

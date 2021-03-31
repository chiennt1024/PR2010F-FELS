Rails.application.routes.draw do

  namespace :admin do
    resources :categories
    resources :questions
    resources :courses
    get 'static_pages/index'
  end
  get 'exam/show'
  resources :courses


  # get 'courses/index'
  # get 'courses/show'
  devise_for :users,
  path: '',
  path_names: {sign_in: 'login' ,sign_out: 'logout' ,edit: 'profile',sign_up: 'resgistration'},
  controllers: {omniauth_callbacks: 'omniauth_callbacks' }
  # controllers:{omniauth_callbacks: "users/omniauth_callbacks"}
  root 'static_pages#index'
  # get 'static_pages/home'
  # get 'static_pages/help'
  as :user do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    delete "signout" => "devise/sessions#destroy"
  end

  resources :categories

  resources :courses
  resources :exams
  
  
end
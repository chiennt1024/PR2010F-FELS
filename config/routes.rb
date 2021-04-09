Rails.application.routes.draw do

  namespace :admin do
    resources :categories
    resources :questions
    resources :courses
    root 'static_pages#index'
    get 'static_pages/index'
  end
  get 'exam/show'
  resources :courses do
    resources :exams
  end

  devise_for :users,
  path: '',
  path_names: {sign_in: 'login' ,sign_out: 'logout' ,edit: 'profile',sign_up: 'resgistration'},
  controllers: {omniauth_callbacks: 'omniauth_callbacks' }
  # controllers:{omniauth_callbacks: "users/omniauth_callbacks"}
  root 'static_pages#index'

  as :user do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    delete "signout" => "devise/sessions#destroy"
  end


  resources :categories  

  resources :categories
  resources :courses
  resources :exams

  resources :examanswers
  resources :results

  
end
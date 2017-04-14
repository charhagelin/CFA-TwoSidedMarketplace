Rails.application.routes.draw do
  resources :posts
  devise_for :users

  root 'pages#index'
  get 'schooldashboard', to: 'pages#school_dashboard'
  get 'userdashboard', to: 'pages#user_dashboard'
  # get 'gallery', to: posts_path

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

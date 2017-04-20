Rails.application.routes.draw do

  resources :cart_items do
    member do
      resources :charges
    end
  end

  resources :posts
  devise_for :users

  root 'pages#index'
  get 'schooldashboard', to: 'pages#school_dashboard'
  get 'userdashboard', to: 'pages#user_dashboard'
  get 'addtocart', to: 'cart_items#index'
  get 'shoppingcart', to: 'user_dashboard#shopping_cart'
  # get 'gallery', to: posts_path

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do


    resources :cart_items do
      member do
        resources :charges
      end
    end

  resources :posts
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } do
  delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
    end
  devise_scope :user do
    end


  root 'pages#index'
  get 'admindashboard', to: 'admin_dashboard#index'
  # get 'userdashboard', to: 'pages#user_dashboard'
  get 'addtocart', to: 'cart_items#index'
  get 'shoppingcart', to: 'user_dashboard#shopping_cart'

  get 'contact', to: "contact#index"
  post 'contact', to: "contact#mail"


  # get 'gallery', to: posts_path

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

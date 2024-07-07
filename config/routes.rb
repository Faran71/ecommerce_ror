Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :users, only: [:index, :show, :create, :update, :destroy]

  post 'users/authenticate', to: 'users#authenticate'

  resources :products, only: [:index, :show, :create, :update, :destroy] do
    collection do
      get 'filter_by_category/:category', to: 'products#filter_by_category', as: 'filter_by_category'
      get 'filter_by_rating/:rating', to: 'products#filter_by_rating', as: 'filter_by_rating'
      get 'filter_by_price/:min_price/:max_price', to: 'products#filter_by_price', as: 'filter_by_price'
      get 'search/:q', to: 'products#search'
    end
  end


  resources :reviews, only: [:index, :show, :create, :update, :destroy] do
    collection do
      get 'filter_by_product/:product_id', to: 'reviews#filter_by_product', as: 'filter_by_product'
    end
  end

  resources :orders, only: [:index, :show, :create, :update, :destroy] do
    collection do
      get 'filter_by_user/:user_id', to: 'orders#filter_by_user', as: 'filter_by_user'
      delete 'delete_by_user/:user_id', to: 'orders#destroy_by_user'
    end
  end
end

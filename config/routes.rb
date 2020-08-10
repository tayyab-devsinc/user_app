Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  resources :users do
    member do
    get :following, :followers
    end
  end

  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts,only: [:create, :destroy]
  resources :relationships,only: [:create, :destroy]
  
  get '/signup', to: 'users#new'
  
  get 'users/new'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/news'

  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
  
  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

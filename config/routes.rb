Rails.application.routes.draw do

  resources :users

  get 'users/new'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/news'

  post '/signup', to: 'users#create'

 root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

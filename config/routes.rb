Rails.application.routes.draw do

  get 'users/login'
  post 'users/sign_in'
  resources :users

  resources :pois
  root to: 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/contact'

end

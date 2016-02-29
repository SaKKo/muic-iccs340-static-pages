Rails.application.routes.draw do

  resources :pois
  root to: 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/contact'

end

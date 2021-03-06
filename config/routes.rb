Rails.application.routes.draw do
  
  # USERS
  get 'signup' => 'users#new'
  resources :users
  
  # SESSIONS
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # STATIC PAGES
  root 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'

end

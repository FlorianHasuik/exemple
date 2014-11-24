Rails.application.routes.draw do

  resources :users

  match '/signup' => 'users#new', :as => 'signup', via: [:get, :post]
  match '/about' => 'pages#about', :as => 'about', via: [:get, :post]
  match '/help' => 'pages#help', :as => 'help', via: [:get, :post]
  match '/contact' => 'pages#contact', :as => 'contact', via: [:get, :post]
  
  root :to => 'pages#home'

end

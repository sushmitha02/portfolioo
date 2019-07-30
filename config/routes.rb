Rails.application.routes.draw do
	
  resources :comments
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  
  devise_scope :user do 
    get "register", :to => "devise/registrations#new", as: :register 
    get "login", :to => "devise/sessions#new", as: :login
    get "logout", :to => "devise/sessions#destroy", as: :logout
  end

  resources :categories

  resources :portfolios, except: [:show] do
    get :sort, on: :collection
  end

  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

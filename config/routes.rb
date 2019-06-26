Rails.application.routes.draw do
	
  devise_for :users,path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end

  resources :categories

  resources :portfolios, except: [:show]

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

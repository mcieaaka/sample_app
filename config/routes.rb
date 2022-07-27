Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  # get '/login', to: 'sessions#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy'
  get '/logout', to:'sessions#destroy'
  # post '/user-delete', to: 'users#destroy', as: :user_delete
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create,:destroy]
  # get 'sessions/new'
  
  # root 'static_pages#home'
  # # get 'static_pages/home'
  # get '/help', to: 'static_pages#help'
  # get '/about', to: 'static_pages#about'
  # get '/contact', to: 'static_pages#contact'
  # get '/signup', to: 'users#new'
  # resources :users
  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Defines the root path route ("/")
  # # root "articles#index"

  # # root "application#hello"
end

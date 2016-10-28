Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  
  #STEVE STUFF ADDED HERE:
  root 'pages#home' #this sets this page to be the homepage - like index
  get 'about', to: 'pages#about'
  
  resources :articles #gives us all the necessary paths for articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  
  resources :categories, except: [:destroy]
end
Coldcut::Application.routes.draw do
  resources :offers
  
  # match 'facebook_redirect', :to => 'facebook#callback'
  match 'facebook_redirect', :to => 'sessions#create'
  
  # Authentication
  match '/auth/:provider/callback' => 'sessions#create'
  match '/auth/failure' => 'sessions#failure'
  match '/signin' => 'sessions#new', :as => :signin
  match '/signout' => 'sessions#destroy', :as => :signout
  
  root :to => 'offers#index'
  
  root :to => 'offers#index'
end

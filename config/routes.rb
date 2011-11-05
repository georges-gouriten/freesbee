Coldcut::Application.routes.draw do
  resources :offers
  resources :users
  # Authentication
  match '/auth/:provider/callback' => 'sessions#create'
  match '/auth/failure' => 'sessions#failure'
  match '/signin' => 'sessions#new', :as => :signin
  match '/signout' => 'sessions#destroy', :as => :signout
  
  root :to => 'offers#index'
end

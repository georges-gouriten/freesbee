Coldcut::Application.routes.draw do
  resources :offers
  
  match 'facebook_redirect', :to => 'facebook#callback'
  
  root :to => 'offers#index'
end

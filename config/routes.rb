Coldcut::Application.routes.draw do
  resources :offers
  
  root :to => 'offers#new'
end

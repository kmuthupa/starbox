Starbox::Application.routes.draw do
  root :to => 'beverages#index'
  resources :beverages
  resources :ingredients
end

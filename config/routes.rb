Starbox::Application.routes.draw do
  root :to => 'beverages#index'
  resources :beverages do
    member do
      post 'vend'
    end
  end
  resources :ingredients do
    collection do
      post 'restock'
    end
  end
end

Starbox::Application.routes.draw do
  root :to => 'beverages#index'
  resources :beverages
  resources :ingredients do
    collection do
      post 'restock'
    end
  end
end

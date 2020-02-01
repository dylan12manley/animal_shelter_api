Rails.application.routes.draw do
  resources :shelters do
    resources :animals
    collection do
      get 'search'
    end
  end
end

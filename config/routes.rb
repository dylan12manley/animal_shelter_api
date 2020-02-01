Rails.application.routes.draw do
  resources :shelters do
    resources :animals
    collection do
      get 'random'
      get 'search'
    end
  end
end

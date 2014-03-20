UserManager::Application.routes.draw do
  resources :users, only: [ :index ] do
    collection do
      get 'create', as: :create
    end
  end
  
  root to: 'users#index'
end

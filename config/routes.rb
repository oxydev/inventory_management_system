Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  
  devise_for :users, controllers: { invitations: 'users/invitations' }

  authenticated :user do
    root to: "home#dashboard", as: :authenticated_root
  end
  
  root to: "home#index"

  resources :categories do
    member do
      get :delete
    end
  end
  
  resources :assets do
    member do
      get :delete
    end
  end
end

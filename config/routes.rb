Rails.application.routes.draw do
  get 'items/index'
  get 'items/new'
  get 'items/edit'
  get 'items/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  
  devise_for :users, controllers: { invitations: 'users/invitations' }

  authenticated :user do
    root to: "home#dashboard", as: :authenticated_root
  end

  resources :users do
    resources :purchaserequests, :path => "request" do
      get :delete
    end
    get '/purchaserequests/:id/approve', to: 'purchaserequests#approve', as: 'approve'
    get '/purchaserequests/:id/decline', to: 'purchaserequests#decline', as: 'decline'
  end
  
  resources :categories do
    member do
      get :delete
    end
  end
  
  resources :items do
    member do
      get :delete
    end
  end
  
  root to: "home#index"

end

Rails.application.routes.draw do
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
  get '/items/:id/use_request', to: 'items#use_request', as: 'use_request'
  get '/items/:id/use_approve', to: 'items#use_approve', as: 'use_approve'
  get '/items/:id/use_decline', to: 'items#use_decline', as: 'use_decline'

  root to: "home#index"

end

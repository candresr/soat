Rails.application.routes.draw do
  devise_for :users
  resources :polizas do
     member do
      get 'list'
     end
  end

  resources :pagos do
    collection do
      get 'resumen'
      get 'resumenPdf'
    end
  end
  resources :usuarios
  root 'home#index'
  post 'home/search'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

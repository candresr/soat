Rails.application.routes.draw do
  resources :polizas
  resources :pagos
  resources :usuarios
  root 'home#index'
  post 'home/search'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

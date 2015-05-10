Rails.application.routes.draw do
  
  resources :usuarios

  post "/auth/steam/callback" => "sessions#create"
  
  get 'sessions/create'
  get 'sessions/destroy'
  
  get 'home/venda'
  get 'home/ofertas'
  
  root 'home#index'
  


end

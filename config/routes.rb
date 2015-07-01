Rails.application.routes.draw do
  root 'comments#home'
  
  get 'new' => 'comments#new'
  post 'new' => 'comments#create'
  get 'view' => 'comments#view'
  resources :comments
  
end

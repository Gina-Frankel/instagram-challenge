Rails.application.routes.draw do
  get 'sessions/new' 
  post  'sessions/new', to: 'sessions#create'
  resources :users
  post  'posts/new', to: 'posts#create'
  resources :posts   #, only: [:index, :create, :new, :show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

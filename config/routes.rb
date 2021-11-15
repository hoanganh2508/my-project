Rails.application.routes.draw do
  get '/signup' ,to:'users#new'
  get '/home' ,to:'static_pages#home'
  get '/help' ,to:'static_pages#help'
  get '/contact' ,to:'static_pages#contact'
  root "application#hello"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
end


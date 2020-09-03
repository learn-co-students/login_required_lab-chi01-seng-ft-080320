Rails.application.routes.draw do
  resources :sessions
  resources :secrets
  get '/login' => 'sessions#login', as: 'login'
  get '/home' => 'sessions#homepage', as: 'home'
  delete '/logout' => 'sessions#destroy', as: 'logout'
  root 'sessions#homepage'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

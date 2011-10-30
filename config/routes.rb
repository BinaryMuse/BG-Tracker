Battlegroups::Application.routes.draw do
  resources :battlegroups
  resources :realms
  resources :sessions, :only => [:new, :create, :destroy]

  get '/login'  => "sessions#new"
  get '/logout' => "sessions#destroy"

  root :to => "battlegroups#index"
end

Battlegroups::Application.routes.draw do
  resources :battlegroups
  resources :realms

  get "/login"  => "admin#login"
  get "/logout" => "admin#logout"

  root :to => "battlegroups#index"
end

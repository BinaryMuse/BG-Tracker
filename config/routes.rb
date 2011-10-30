Battlegroups::Application.routes.draw do
  resources :battlegroups
  resources :realms
  root :to => "battlegroups#index"
end

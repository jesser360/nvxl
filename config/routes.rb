Rails.application.routes.draw do
  resources :dashboards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "dashboard#index"

end
Rails.application.routes.draw do
  resources :dashboards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "dashboard#index"
  patch '/dashboard/:id', to: 'dashboard#update', via: :all
  post '/dashboard', to: 'dashboard#create', via: :all
  delete '/dashboard/:id', to: 'dashboard#delete', via: :all
  match '/dashboard/seed', to: 'dashboard#seed', via: :all
  match '/dashboard/destroy_all', to: 'dashboard#destroy_all', via: :all

end

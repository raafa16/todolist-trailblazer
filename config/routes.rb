Rails.application.routes.draw do
  resources :lists

  root to: 'lists#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

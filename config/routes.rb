Rails.application.routes.draw do

  resources :comments
  resources :users
  resources :subs
  resource :session, only: [:create, :new, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :horses
  devise_for :users
  root to: 'horses#index'
end


Rails.application.routes.draw do
 resources :articles, :path => 'reservations'

  devise_for :users
resources :articles do
  resources :comments
end
 
  root 'welcome#index'
end
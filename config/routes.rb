
Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 resources :articles, :path => 'reservations'

  devise_for :users
resources :articles do
  resources :comments
end
 
  root 'welcome#index'
end

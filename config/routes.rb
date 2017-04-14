
Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  devise_for :users
resources :articles, :path => 'reservations' do
  resources :comments
end
 
  root 'welcome#index'
end

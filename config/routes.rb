
Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  devise_for :users
resources :articles, :path => 'signin' do
  resources :comments
end
 
 resources :reservations
  root 'welcome#index'
  PagesController.action_methods.each do |action|
    get "/#{action}", to: "pages##{action}", as: "#{action}_page"
  end
end

Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root 'home#index'

  resources :blogs, only: [:index]
  resources :categories, only: [:index, :show]
  resources :posts, only: [:index, :show]
  resources :contacts
  root :to => "contact_us/contacts#new"
end

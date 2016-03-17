Rails.application.routes.draw do
  resources :posts
  resources :contacts, only: [:new, :create]
  resources :projects
  get 'welcome/index'
  root 'welcome#index'

end
Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'pages#main'

  resources :pages
  resources :blogs
  resources :blog_posts
  resources :recipes

end

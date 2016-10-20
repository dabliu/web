Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root controller: :static_pages, action: :index

  resources :catalogs, only: :show, path: "/catalogos"
end

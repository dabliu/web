Rails.application.routes.draw do
  root controller: :static_pages, action: :index

  resources :catalogs, only: :show, path: "/catalogos"
end

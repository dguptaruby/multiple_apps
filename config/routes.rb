Rails.application.routes.draw do
  resources :web_applications
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/:root_path', to: 'pages#search_pages'
  get '/:root_path/about', to: 'pages#about_pages'
  get '/:root_path/version', to: 'pages#about_pages'
end

Rails.application.routes.draw do
  resources :web_applications
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/:root_path', to: 'pages#search_pages'

  get '/:root_path/:action_name', to: 'pages#app_page'
end

require 'api_version_constraint'

Rails.application.routes.draw do
  devise_for :users
  # devise_for :users
  # devise_for :installs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    namespace :api, defaults: {format: :json} do
        namespace :v1, path:"/", constraints: ApiVersionConstraint.new(version: 1, default: true) do
            resources :teste
        end
    end
end

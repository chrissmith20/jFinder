Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  get '/job', to: 'homes#index'
  get '/job/new', to: 'homes#index'
  get '/job/:id', to: 'homes#index'
  get '/job/:id/edit', to: 'homes#index'

  namespace :api do
    namespace :v1 do
      resources :jobs
    end
  end


end

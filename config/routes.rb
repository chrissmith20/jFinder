Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  get '/job', to: 'homes#index'
  
end

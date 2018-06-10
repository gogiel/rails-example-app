Rails.application.routes.draw do
  resources :entries, except: [:edit, :update, :destroy]
  root to: 'entries#index'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/admin/sidekiq'
end

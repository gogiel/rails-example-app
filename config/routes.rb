Rails.application.routes.draw do
  resources :entries, except: [:edit, :update, :destroy]
  resources :workers, only: [:create]
  root to: 'entries#index'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/admin/sidekiq'
end

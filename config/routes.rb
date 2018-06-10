Rails.application.routes.draw do
  resources :entries, except: [:edit, :update, :destroy]
  root to: 'entries#index'
end

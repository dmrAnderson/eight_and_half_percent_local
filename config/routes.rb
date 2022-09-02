# frozen_string_literal: true

Rails.application.routes.draw do
  resource :cart, only: :show do
    collection do
      get :counter
    end
  end

  resources :orderables, only: :destroy do
    collection do
      post 'add'
      post 'remove'
    end
  end

  resources :products
  root 'home#index'
  devise_for :users, path: :auth
end

# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  draw(:users)

  get :privacy_policy, to: 'home#privacy_policy'

  resources :products

  resource :cart, only: :show do
    collection do
      get :counter
      delete :clean
    end
  end

  resources :orderables, only: :destroy do
    collection do
      post 'add'
      post 'remove'
    end
  end
end

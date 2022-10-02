# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  devise_for :users,
             path_names: {
               sign_in: 'sign-in',
               sign_up: 'sign-up'
             },
             controllers: {
               omniauth_callbacks: 'users/omniauth_callbacks',
               sessions: 'users/sessions'
             }

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

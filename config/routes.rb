# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  devise_for :users,
             path_names: {
               sign_in: 'sign-in',
               sign_up: 'sign-up'
             },
             controllers: {
               confirmations: 'users/confirmations',
               omniauth_callbacks: 'users/omniauth_callbacks',
               passwords: 'users/passwords',
               registrations: 'users/registrations',
               sessions: 'users/sessions',
               unlocks: 'users/unlocks'
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

# frozen_string_literal: true

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

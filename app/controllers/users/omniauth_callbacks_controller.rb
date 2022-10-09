# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    Users::GoogleOauth2.new(request.env['omniauth.auth']).build_user.then do |user|
      if user.save
        sign_out_all_scopes
        flash[:notice] = t('devise.omniauth_callbacks.success', kind: 'Google')
        sign_in_and_redirect user, event: :authentication
      else
        failure
      end
    end
  end
end

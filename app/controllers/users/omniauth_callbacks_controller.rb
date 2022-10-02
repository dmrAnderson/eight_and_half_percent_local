# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    Users::GoogleOauth2.call(auth_params).then do |user|
      if user.persisted?
        sign_out_all_scopes
        flash[:notice] = t('devise.omniauth_callbacks.success', kind: 'Google')
        sign_in_and_redirect user, event: :authentication
      else
        flash[:alert] =
          t('devise.omniauth_callbacks.failure', kind: 'Google', reason: "#{auth_params.info.email} is not authorized")
        redirect_to new_user_registration_url
      end
    end
  end

  private

  def auth_params
    @auth_params ||= request.env['omniauth.auth']
  end
end

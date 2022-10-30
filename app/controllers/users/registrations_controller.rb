# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  invisible_captcha only: %i[create]
  before_action :configure_account_update_params, only: %i[update]

  protected

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name])
  end

  def after_inactive_sign_up_path_for(_resource)
    new_session_path(resource_name)
  end
end

# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  invisible_captcha only: %i[create]

  protected

  def after_sign_out_path_for(_resource_or_scope)
    new_session_path(resource_name)
  end

  def after_sign_in_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || root_path
  end
end

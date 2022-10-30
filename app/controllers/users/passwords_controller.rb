# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  invisible_captcha only: %i[create update]
end

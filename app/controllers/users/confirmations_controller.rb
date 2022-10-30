# frozen_string_literal: true

class Users::ConfirmationsController < Devise::ConfirmationsController
  invisible_captcha only: %i[create]
end

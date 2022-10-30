# frozen_string_literal: true

class Users::UnlocksController < Devise::UnlocksController
  invisible_captcha only: %i[create]
end

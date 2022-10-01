# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  include ErrorsHandlers::NotFound

  def current_cart
    current_user.cart
  end
  helper_method :current_cart
end

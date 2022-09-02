# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

  def current_cart
    current_user.cart
  end
  helper_method :current_cart
end

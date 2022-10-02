# frozen_string_literal: true

class CartsController < ApplicationController
  def show; end

  def counter
    render partial: 'counter'
  end

  def clean
    current_cart.orderables.then do |scope|
      scope.clear if scope.any?

      redirect_to root_path, status: :see_other
    end
  end
end

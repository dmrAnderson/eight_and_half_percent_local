# frozen_string_literal: true

class CartsController < ApplicationController
  def show; end

  def counter
    render partial: 'counter'
  end

  def clean
    current_cart.orderables.clear

    redirect_to root_path, status: :see_other
  end
end

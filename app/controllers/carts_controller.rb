# frozen_string_literal: true

class CartsController < ApplicationController
  def show; end

  def counter
    render partial: 'counter'
  end
end

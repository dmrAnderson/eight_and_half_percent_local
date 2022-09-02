# frozen_string_literal: true

class OrderablesController < ApplicationController
  def destroy
    Orderable.destroy_by(id: params[:id])
  end

  def add
    current_cart.orderables.find_or_create_by(permitted_params)
  end

  def remove
    current_cart.orderables.destroy_by(permitted_params)
  end

  private

  def permitted_params
    params.require(:orderable).permit(*%i[product_id quantity])
  end
end

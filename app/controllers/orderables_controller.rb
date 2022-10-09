# frozen_string_literal: true

class OrderablesController < ApplicationController
  def destroy
    Orderable.destroy_by(id: params[:id])
  end

  def add
    current_cart.orderables.find_or_initialize_by(product_id: permitted_params[:product_id]).tap do |orderable|
      orderable.update!(quantity: permitted_params[:quantity])
    end
  end

  def remove
    current_cart.orderables.find_by(product_id: permitted_params[:product_id]).tap do |orderable|
      next if orderable.blank?

      (orderable.quantity -= permitted_params[:quantity].to_i).tap do |quantity|
        quantity.positive? ? orderable.update!(quantity:) : orderable.destroy!
      end
    end
  end

  private

  def permitted_params
    params.require(:orderable).permit(*%i[product_id quantity])
  end
end

# frozen_string_literal: true

class Orderables::Forms::BaseComponent < ApplicationComponent
  def initialize(product:)
    @product = product
  end

  private

  attr_reader :product

  def submit_button
    button_tag type: :submit, class: 'btn btn-light btn-sm' do
      render IconComponent.new(klass: _icon_class)
    end
  end
end

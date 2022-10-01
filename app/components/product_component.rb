# frozen_string_literal: true

class ProductComponent < ApplicationComponent
  def initialize(product:)
    @product = product
  end

  private

  attr_reader :product

  delegate :name, :price, to: :product

  def title
    highlight(name,
              params.dig(Ransack::Configuration.options[:search_key], :name_cont),
              highlighter: '<b class="text-primary">\1</b>')
  end

  def subtitle
    number_to_currency(price)
  end

  def description
    "Some quick example text to build on the card title and make up the bulk of the card's content."
  end

  def show_link
    link_to product_path(product),
            class: 'btn btn-outline-primary',
            data: { turbo_frame: :products_page, turbo_action: :advance } do
      render IconComponent.new(klass: 'arrow-up-right-square').with_content('View details')
    end
  end
end
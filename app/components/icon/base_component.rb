# frozen_string_literal: true

class Icon::BaseComponent < ApplicationComponent
  def initialize(klass:)
    @klass = klass
  end

  def call
    capture do
      concat icon
      concat text
    end
  end

  private

  attr_reader :klass

  def icon
    tag.i class: %W[bi bi-#{klass}]
  end

  def text
    return if content.blank?

    tag.span class: 'ms-2 my-auto' do
      content
    end
  end
end

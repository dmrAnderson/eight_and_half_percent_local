# frozen_string_literal: true

class IconComponent < ApplicationComponent
  def initialize(klass:)
    super
    @klass = klass
  end

  def call
    capture do
      concat icon
      concat text
    end
  end

  private

  def icon
    tag.i class: %W[bi bi-#{@klass}]
  end

  def text
    return if content.blank?

    tag.span class: 'ms-2' do
      content
    end
  end
end

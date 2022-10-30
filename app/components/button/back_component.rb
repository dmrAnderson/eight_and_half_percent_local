# frozen_string_literal: true

class Button::BackComponent < ApplicationComponent
  def initialize(path: :root)
    @path = path
  end

  def call
    link_to path, data: { turbo_frame: path, turbo_action: :advance }, class: klass do
      render Icon::BaseComponent.new(klass: icon_klass).with_content(content)
    end
  end

  private

  attr_reader :path

  def klass
    'btn btn-outline-primary btn-sm'
  end

  def icon_klass
    'arrow-up-left-circle'
  end

  def content
    'Back'
  end
end

# frozen_string_literal: true

class Navigation::BackButtonComponent < ApplicationComponent
  def initialize(path: :root)
    @path = path
  end

  def call
    link_to path, data: { turbo_frame: path, turbo_action: :advance }, class: 'btn btn-outline-primary' do
      render Icon::BaseComponent.new(klass:).with_content(content)
    end
  end

  private

  attr_reader :path

  def klass
    'arrow-up-left-circle'
  end

  def content
    'Back'
  end
end

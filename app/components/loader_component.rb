# frozen_string_literal: true

class LoaderComponent < ApplicationComponent
  def initialize(size_klass: nil)
    @size_klass = size_klass
  end

  def call
    tag.span class: loader_klass, role: 'status' do
      content_tag(:span, ' Loading...', class: 'visually-hidden')
    end
  end

  private

  attr_reader :size_klass

  def loader_klass
    ['spinner-border spinner-border', size_klass].compact_blank.join('-')
  end
end

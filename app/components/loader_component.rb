# frozen_string_literal: true

class LoaderComponent < ApplicationComponent
  def initialize(size_klass: nil)
    super
    @size_klass = size_klass
  end

  def call
    tag.div class: 'd-flex justify-content-center' do
      tag.div class: loader_klass, role: 'status' do
        tag.span class: 'visually-hidden' do
          'Loading...'
        end
      end
    end
  end

  private

  attr_reader :size_klass

  def loader_klass
    ['spinner-border spinner-border', size_klass].compact_blank.join('-')
  end
end

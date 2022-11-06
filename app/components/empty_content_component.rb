# frozen_string_literal: true

class EmptyContentComponent < ApplicationComponent
  def call
    tag.div class: 'col empty' do
      content_tag(:div, content, class: klass)
    end
  end

  private

  def content
    render Icon::BaseComponent.new(klass: 'info-circle-fill').with_content(t('empty_page'))
  end

  def klass
    'd-flex justify-content-center alert alert-primary'
  end
end

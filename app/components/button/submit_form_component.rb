# frozen_string_literal: true

class Button::SubmitFormComponent < ApplicationComponent
  def initialize(form, data: {})
    @form = form
    @data = data
  end

  def call
    form.button :button, data: do
      enabled_content.concat(disabled_content)
    end
  end

  private

  attr_reader(*%i[form data])

  def enabled_content
    content_tag(:span, content, class: 'show-when-enabled')
  end

  def disabled_content
    tag.span class: 'show-when-disabled' do
      capture do
        concat render LoaderComponent.new(size_klass: 'sm')
        concat t('loading')
      end
    end
  end
end

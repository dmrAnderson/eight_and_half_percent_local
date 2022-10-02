# frozen_string_literal: true

class Flash::BaseComponent < ApplicationComponent
  def call
    tag.div class: "alert alert-#{_bg_class} alert-dismissible fade show" do
      capture do
        concat body
        concat close_button
      end
    end
  end

  private

  def body
    render Icon::BaseComponent.new(klass: _icon_class).with_content(_message)
  end

  def close_button
    button_tag '', data: { bs_dismiss: 'alert' }, type: :button, class: 'btn-close'
  end

  def render?
    _message.present?
  end
end

# frozen_string_literal: true

class Flash::AlertComponent < Flash::BaseComponent
  private

  def _bg_class
    'danger'
  end

  def _message
    helpers.alert
  end

  def _icon_class
    'exclamation-circle'
  end
end

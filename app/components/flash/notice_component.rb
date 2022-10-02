# frozen_string_literal: true

class Flash::NoticeComponent < Flash::BaseComponent
  private

  def _bg_class
    'primary'
  end

  def _message
    helpers.notice
  end

  def _icon_class
    'info-circle'
  end
end

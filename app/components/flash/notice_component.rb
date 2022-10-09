# frozen_string_literal: true

class Flash::NoticeComponent < Flash::BaseComponent
  private

  def _bg_class
    'success'
  end

  def _message
    helpers.notice
  end

  def _icon_class
    'check-circle-fill'
  end
end

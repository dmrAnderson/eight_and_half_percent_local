# frozen_string_literal: true

class Flash::ErrorComponent < Flash::AlertComponent
  private

  def _message
    flash[:error]
  end
end

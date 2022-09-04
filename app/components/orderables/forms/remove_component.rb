# frozen_string_literal: true

class Orderables::Forms::RemoveComponent < Orderables::Forms::BaseComponent
  private

  def url
    remove_orderables_path
  end

  def _icon_class
    'dash'
  end
end

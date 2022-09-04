# frozen_string_literal: true

module Orderables
  module Forms
    class RemoveComponent < Orderables::Forms::BaseComponent
      private

      def url
        remove_orderables_path
      end

      def _icon_class
        'dash'
      end
    end
  end
end

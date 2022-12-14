# frozen_string_literal: true

module Orderables
  module Forms
    class AddComponent < Orderables::Forms::BaseComponent
      private

      def url
        add_orderables_path
      end

      def _icon_class
        'plus'
      end
    end
  end
end

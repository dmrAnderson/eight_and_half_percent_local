# frozen_string_literal: true

class BrandComponent < IconComponent
  def initialize
    @klass = 'gem'
  end

  private

  def content
    Rails.application.class.module_parent_name.underscore.humanize
  end
end

# frozen_string_literal: true

class Icon::Devise::SessionComponent < Icon::BaseComponent
  def initialize
    @klass = 'person-check'
  end

  private

  def content
    'Sign in'
  end
end

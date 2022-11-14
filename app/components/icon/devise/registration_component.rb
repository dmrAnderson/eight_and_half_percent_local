# frozen_string_literal: true

class Icon::Devise::RegistrationComponent < Icon::BaseComponent
  def initialize
    @klass = 'person-add'
  end

  private

  def content
    'Sign up'
  end
end

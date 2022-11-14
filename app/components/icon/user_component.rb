# frozen_string_literal: true

class Icon::UserComponent < ApplicationComponent
  def initialize(user:)
    @user = user
  end

  def call
    render Icon::BaseComponent.new(klass:).with_content(content)
  end

  private

  attr_reader :user

  delegate(*%i[name email provider], to: :user, allow_nil: true)

  def content
    name.presence || email.split('@')[0]
  end

  def klass
    {
      'google_oauth2' => 'google'
    }.fetch(provider) { 'person-gear' }
  end
end

# frozen_string_literal: true

class Navigations::UserComponent < ApplicationComponent
  def initialize(user:)
    @user = user
  end

  def call
    render IconComponent.new(klass: klass).with_content(build_name)
  end

  private

  attr_reader :user

  delegate(*%i[name email provider], to: :user, allow_nil: true)

  def build_name
    name || email.split('@')[0]
  end

  def klass
    {
      'google_oauth2' => 'google'
    }.fetch(provider, 'person')
  end
end

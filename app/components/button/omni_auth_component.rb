# frozen_string_literal: true

class Button::OmniAuthComponent < ApplicationComponent
  def initialize(resource_name, provider)
    @resource_name = resource_name
    @provider = provider
  end

  def call
    button_to content, path, data: { turbo: false }, class: klass
  end

  private

  attr_reader(*%i[resource_name provider])

  def content
    render Icon::BaseComponent.new(klass: icon_klass) do
      "Sign in with #{OmniAuth::Utils.camelize(provider)}"
    end
  end

  def path
    omniauth_authorize_path(resource_name, provider)
  end

  def klass
    'btn btn-dark w-100'
  end

  def icon_klass
    {
      google_oauth2: 'google'
    }[provider]
  end

  def main_app
    Rails.application.class.routes.url_helpers
  end
end

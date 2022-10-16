# frozen_string_literal: true

class User::AvatarComponent < ApplicationComponent
  GRAVATAR_URL = 'https://secure.gravatar.com/avatar'

  def initialize(user:)
    @user = user
  end

  def call
    image_tag content, alt: email, class: 'rounded', loading: 'lazy'
  end

  private

  attr_reader :user

  delegate(*%i[email avatar_url], to: :user, allow_nil: true)

  def content
    avatar_url.presence || gravatar_url
  end

  def gravatar_url
    [GRAVATAR_URL, Digest::MD5.hexdigest(email)].join('/')
  end
end

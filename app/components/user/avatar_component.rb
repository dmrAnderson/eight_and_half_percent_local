# frozen_string_literal: true

class User::AvatarComponent < ApplicationComponent
  def initialize(user:)
    @user = user
  end

  def call
    image_tag content, alt: email, loading: 'lazy', class: 'rounded'
  end

  private

  attr_reader :user

  delegate(*%i[email avatar_url], to: :user, allow_nil: true)

  def content
    avatar_url.presence || gravatar_url
  end

  def gravatar_url
    URI::HTTPS.build(
      host: 'secure.gravatar.com',
      path: "/avatar/#{Digest::MD5.hexdigest(email)}"
    ).to_s
  end
end

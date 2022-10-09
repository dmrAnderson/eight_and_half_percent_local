# frozen_string_literal: true

class Users::GoogleOauth2 < ApplicationService
  attr_reader :auth_params

  def initialize(auth_params)
    @auth_params = auth_params
  end

  def build_user
    User.find_or_initialize_by(keys).tap do |user|
      user.skip_confirmation!
      user.assign_attributes(user_params)
    end
  end

  private

  delegate(*%i[provider uid info], to: :auth_params)
  delegate(*%i[email name image], to: :info)

  def keys
    {
      provider:,
      uid:
    }
  end

  def user_params
    {
      email:,
      password: Devise.friendly_token[0, 20],
      name:,
      avatar_url: image
    }
  end
end

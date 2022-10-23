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

  alias avatar_url image

  def user_params
    {
      email:,
      password:,
      name:,
      avatar_url:
    }
  end

  def password
    Devise.friendly_token[0, 20]
  end
end

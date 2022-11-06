# frozen_string_literal: true

class User < ApplicationRecord
  attr_accessor :_rucaptcha

  after_create_commit :create_cart!

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable, :lockable,
         :omniauthable, omniauth_providers: %i[google_oauth2]

  has_one :cart, dependent: :destroy

  validates :privacy_policy, acceptance: true
end

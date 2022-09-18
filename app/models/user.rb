# frozen_string_literal: true

class User < ApplicationRecord
  after_create_commit :create_cart!

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable, :lockable

  has_one :cart, dependent: :destroy

  def name
    email.split('@')[0]
  end

  private

  def create_cart!
    Cart.find_or_create_by!(user: self)
  end
end

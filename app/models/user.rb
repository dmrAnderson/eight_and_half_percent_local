# frozen_string_literal: true

class User < ApplicationRecord
  after_create_commit :create_cart!

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :cart, dependent: :destroy

  def name
    email.split('@')[0]
  end

  private

  def create_cart!
    Cart.find_or_create_by!(user: self)
  end
end

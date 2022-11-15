# frozen_string_literal: true

class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many_attached :images do |attachable|
    attachable.variant :medium, resize_to_limit: [800, 800]
  end

  has_many :orderables, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }

  scope :newest_first, -> { order(updated_at: :desc) }
end

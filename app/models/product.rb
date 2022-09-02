# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, comparison: { greater_than: 0 }
end

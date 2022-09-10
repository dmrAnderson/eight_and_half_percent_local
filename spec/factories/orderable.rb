# frozen_string_literal: true

FactoryBot.define do
  factory :orderable do
    # product
    # cart

    quantity { Faker::Number.between(1, 10) }
  end
end

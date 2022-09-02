# frozen_string_literal: true

20.times do
  Product.create!(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price
  )
end

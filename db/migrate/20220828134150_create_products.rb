# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, precision: 5, scale: 2, null: false, default: 0.0

      t.timestamps
    end

    add_index :products, :name, unique: true
  end
end

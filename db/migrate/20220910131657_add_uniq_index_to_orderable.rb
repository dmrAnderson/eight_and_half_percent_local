# frozen_string_literal: true

class AddUniqIndexToOrderable < ActiveRecord::Migration[7.0]
  def change
    add_index :orderables, %i[cart_id product_id], unique: true
    remove_index :carts, name: 'index_carts_on_user_id'
    add_index :carts, :user_id, unique: true
    change_column_null :products, :name, false
    remove_index :orderables, name: 'index_orderables_on_cart_id'
  end
end

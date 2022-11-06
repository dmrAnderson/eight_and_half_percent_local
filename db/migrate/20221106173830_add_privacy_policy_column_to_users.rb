# frozen_string_literal: true

class AddPrivacyPolicyColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :privacy_policy, :boolean, null: false, default: true
  end
end

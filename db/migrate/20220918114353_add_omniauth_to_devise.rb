# frozen_string_literal: true

class AddOmniauthToDevise < ActiveRecord::Migration[7.0]
  def change
    change_table :users, bulk: true do |t|
      t.string :uid
      t.string :name
      t.string :avatar_url
      t.string :provider
    end
  end
end

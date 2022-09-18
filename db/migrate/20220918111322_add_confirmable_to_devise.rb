# frozen_string_literal: true

class AddConfirmableToDevise < ActiveRecord::Migration[7.0]
  def up
    change_table :users, bulk: true do |t|
      t.string :confirmation_token, index: { unique: true }
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string :unconfirmed_email
    end

    User.update_all confirmed_at: DateTime.now
  end

  def down
    change_table :users, bulk: true do |t|
      t.remove %i[confirmation_token confirmed_at confirmation_sent_at unconfirmed_email]
      t.remove_index :confirmation_token
    end
  end
end

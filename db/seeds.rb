# frozen_string_literal: true

require 'factory_bot_rails'

FactoryBot.create(:user, email: 'admin@admin.admin', password: 'password', confirmed_at: DateTime.current)
40.times { FactoryBot.create(:product) }

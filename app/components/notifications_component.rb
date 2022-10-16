# frozen_string_literal: true

class NotificationsComponent < ApplicationComponent
  def call
    capture do
      concat render Flash::NoticeComponent.new
      concat render Flash::AlertComponent.new
    end
  end
end

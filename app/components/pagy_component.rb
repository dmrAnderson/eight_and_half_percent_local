# frozen_string_literal: true

class PagyComponent < ApplicationComponent
  include Pagy::Frontend

  def initialize(pagy)
    super
    @pagy = pagy
  end

  def call
    sanitize(pagination)
  end

  private

  def pagination
    pagy_bootstrap_nav(@pagy)
  end

  def render?
    @pagy.pages > 1
  end
end

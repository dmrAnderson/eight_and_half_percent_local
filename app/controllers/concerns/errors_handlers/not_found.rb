# frozen_string_literal: true

module ErrorsHandlers::NotFound
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound, with: :notfound
  end

  private

  def notfound(exception)
    logger.warn(exception)
    render file: 'public/404.html', status: :not_found, layout: false
  end
end
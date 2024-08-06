class ApplicationController < ActionController::Base
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from StandardError, with: :render_internal_server_error
  
    private
  
    def record_not_found
      render file: 'public/404.html', status: :not_found
    end
  
    def render_internal_server_error(exception)
      logger.error(exception.message)
      render file: 'public/500.html', status: :internal_server_error
    end
  end
  
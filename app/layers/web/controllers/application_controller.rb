module Web
  module Controllers
    class ApplicationController < ActionController::API
      rescue_from Exception do |e|
        # You may want to log more robust information here
        Rails.logger.error("Error message: #{e.message}")

        render json: { error: 'Unexpected Error' }, status: :internal_server_error
      end

      rescue_from Exceptions::BusinessException do |e|
        render json: { error: e.message }, status: :bad_request
      end
    end
  end
end

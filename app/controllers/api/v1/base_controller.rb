require "application_responder"

module Api
  module V1
    class BaseController < ActionController::API
      self.responder = ApplicationResponder

      respond_to :json

      rescue_from ActiveRecord::RecordNotFound, :with => :respond_with_404

      def respond_with_404
        render json: {
          errors: "Entity with id: '#{params[:id]}' not found"
        }, status: 404
      end
    end
  end
end

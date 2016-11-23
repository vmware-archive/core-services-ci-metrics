module Api
  module V1
    class CategoriesController < BaseController
      def create
        # permitted = params.require(:name)
        category = Category.new(name: params[:name])
        category.save

        redirect_to :back
      end
    end
  end
end

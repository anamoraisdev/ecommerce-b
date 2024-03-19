class CategoriesController < ApplicationController
    def index 
        @categories = Category.all
        return render json: @categories
    end 
    
    def show
        @category = Category.find(params[:id])
        return render json: @category
    end

    private
    def categories_params
      params.require(:category).permit(:name)
    end
end

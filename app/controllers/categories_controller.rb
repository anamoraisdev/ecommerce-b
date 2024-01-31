class CategoriesController < ApplicationController
    def index 
        @categories = Category.all
        return render json: @categories
    end 
    
    def show
        @category = Category.find(params[:id])
        return render json: @category
    end

    def new 
        @category = Category.new(categories_params)
    end

    def create
        @category = Category.new(categories_params)
        @category.save
        return render json: @category
    end 

    def destroy
        @category = Category.find(params[:id])
        @category.destroy
        return render json: Category.all
    end

    def update
        @category = Category.find(params[:id])
        @category.update(categories_params)
        return render json: @category
    end

    private
    def categories_params
      params.require(:category).permit(:name)
    end
end

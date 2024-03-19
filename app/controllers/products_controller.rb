class ProductsController < ApplicationController
    def index 
        return render json:  Product.all
    end
end

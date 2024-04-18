class ProductsController < ApplicationController
  def index
    products = Product.all.map do |product|
      {
        id: product.id,
        name: product.name,
        description: product.description,
        price: product.price,
        category_id: product.category_id,
        image_urls: product.images.map { |image| url_for(image) } # Gere as URLs das imagens usando `url_for`
      }
    end
    render json: { products: products }
  end

end

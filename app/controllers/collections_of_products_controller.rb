class CollectionsOfProductsController < ApplicationController
    def index 
        collections = CollectionOfProduct.all.map do |collection|
            {
                id: collection.id,
                name: collection.name,
                products: collection.products.map do |product|
                    {
                      id: product.id,
                      name: product.name,
                      image_urls: product.images.map { |image| url_for(image) }
                    }
                end

            }

        end
        render json: { collections_of_products: collections }
    end 
end

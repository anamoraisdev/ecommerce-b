class AddCollectionOfProductIdToProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :collection_of_product, foreign_key: true
  end
end

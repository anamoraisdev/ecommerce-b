class CreateCollectionOfProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :collection_of_products do |t|
      t.string :name
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end

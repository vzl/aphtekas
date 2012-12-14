class CreateSubCategoryProducts < ActiveRecord::Migration
  def change
    create_table :sub_category_products do |t|
      t.string :url
      t.references :categoryproduct

      t.timestamps
    end
    add_index :sub_category_products, :categoryproduct_id
  end
end

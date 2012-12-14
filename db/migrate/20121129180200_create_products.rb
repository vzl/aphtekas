class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :url
      t.string :international_name
      t.string :producer
      t.string :formofproduct
      t.string :Indications
      t.string :dateexpires
      t.string :registrationcertificate
      t.string :dateregistrationcertificate
      t.string :atcode
      t.string :orderministry
      t.references :category

      t.timestamps
    end
    add_index :products, :category_id
  end
end

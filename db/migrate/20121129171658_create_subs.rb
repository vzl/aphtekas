class CreateSubs < ActiveRecord::Migration
  def change
    create_table :subs do |t|
      t.string :url
      t.references :category

      t.timestamps
    end
    add_index :subs, :category_id
  end
end

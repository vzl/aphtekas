class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :title
      t.text :phone_number

      t.timestamps
    end
  end
end

class AddCountParsedToSub < ActiveRecord::Migration
  def change
    add_column :subs, :count_parsed, :integer

  end
end

class AddCountOnSiteToSub < ActiveRecord::Migration
  def change
    add_column :subs, :count_on_site, :integer

  end
end

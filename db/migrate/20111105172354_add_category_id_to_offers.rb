class AddCategoryIdToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :category_id, :integer
    add_index :offers, :category_id
  end
end

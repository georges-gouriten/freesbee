class AddLatAndLongToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :lat, :string
    add_column :offers, :long, :string
  end
end

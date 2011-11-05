class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :title
      t.string :description
      t.string :photo
      t.string :pickup_point
      t.timestamps
    end
  end
end

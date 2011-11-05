class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :title
      t.string :description
      t.string :photo
      t.string :pickup_point
      t.references :user
      t.timestamps
    end
  end
end

class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :name
      t.string :description
      t.string :photo
      t.string :pickup_point
      t.boolean :is_functional
      
      t.timestamps
    end
  end
end

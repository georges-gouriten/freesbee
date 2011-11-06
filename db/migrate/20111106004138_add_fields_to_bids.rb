class AddFieldsToBids < ActiveRecord::Migration
  def change
    add_column :bids, :status, :integer, :default => 0
    add_column :bids, :facebook_post_url, :string
  end
end

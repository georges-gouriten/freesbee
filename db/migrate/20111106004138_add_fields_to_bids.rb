class AddFieldsToBids < ActiveRecord::Migration
  def change
    add_column :status, :integer, :default => 0
    add_column :facebook_post_url, :string
  end
end

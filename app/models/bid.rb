class Bid < ActiveRecord::Base
  validates_uniqueness_of :user_id, :scope => :offer_id
  belongs_to :user
end

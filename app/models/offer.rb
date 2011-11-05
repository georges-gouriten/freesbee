class Offer < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  
  belongs_to :user
  has_many :bids
end

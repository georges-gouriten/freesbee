class Offer < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  
end

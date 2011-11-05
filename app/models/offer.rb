class Offer < ActiveRecord::Base
  include Geokit::Geocoders
  
  # Carrier Wave
  mount_uploader :photo, PhotoUploader
  
  # Geokit
  acts_as_mappable  :default_units => :kms,
                    :default_formula => :sphere,
                    :distance_field_name => :distance,
                    :lat_column_name => :lat,
                    :lng_column_name => :long
  
  belongs_to :user
  has_many :bids
  
  before_create :geocode
  before_update :geocode
  
  def geocode
    geocode = MultiGeocoder.geocode(self.pickup_point)
    if !geocode.blank?
      self.long = geocode.lng
      self.lat = geocode.lat
    end
  end
  
end

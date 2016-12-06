class School < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address
  
  def near_by kilometers
    miles = kilometers / 1.609344
    return nearbys(miles)
  end
end

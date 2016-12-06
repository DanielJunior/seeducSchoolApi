class School < ApplicationRecord
  geocoded_by :full_street_address # can also be an IP address
  after_validation :geocode # auto-fetch coordinates

  def near_by kilometers
    miles = kilometers / 1.609344
    return nearbys(miles)
  end
end

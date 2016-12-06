class School < ApplicationRecord
  geocoded_by :full_street_address
  after_validation :geocode # auto-fetch coordinates

  def full_street_address
    ""
  end

  def near_by kilometers
    miles = kilometers / 1.609344
    return nearbys(miles)
  end
end

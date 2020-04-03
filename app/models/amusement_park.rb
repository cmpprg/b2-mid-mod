class AmusementPark < ApplicationRecord

  has_many :rides

  def rides_alphabetically
    rides.order(:name)
  end

  def average_ride_thrill_rating
    return 0 if rides.empty?
    rides.average(:thrill_rating)
  end
end

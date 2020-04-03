require "rails_helper"

RSpec.describe Mechanic, type: :model do
  describe "relationships" do
    it {should have_many :ride_mechanics}
    it {should have_many(:rides).through(:ride_mechanics)}
  end

  describe "instance methods" do
    it "can create a ride_mechanics record" do
      amusement_park = AmusementPark.create(name:"Ryan's Adventures", admission_price: 60)

      mechanic1 = Mechanic.create(name:"Ralph", years_of_experience: 21)

      ride1 = amusement_park.rides.create(name:"Lightning Racer", thrill_rating: 9)

      expect(mechanic1.rides.empty?).to eql(true)

      mechanic1.add_ride(ride1.id)

      expect(mechanic1.rides.last).to eql(ride1)
    end
  end
end

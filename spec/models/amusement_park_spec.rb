require "rails_helper"

RSpec.describe AmusementPark, type: :model do
  describe "relationships" do
    it {should have_many :rides}
  end

  describe "instance varibales" do
    it "can list rides alphabetically" do
      amusement_park = AmusementPark.create(name:"Ryan's Adventures", admission_price: 60)
      ride1 = amusement_park.rides.create(name:"B", thrill_rating: 9)
      ride2 = amusement_park.rides.create(name:"A", thrill_rating: 7)
      ride3 = amusement_park.rides.create(name:"D", thrill_rating: 7)
      ride4 = amusement_park.rides.create(name:"C", thrill_rating: 5)

      expect(amusement_park.rides_alphabetically[0]).to eql(ride2)
      expect(amusement_park.rides_alphabetically[1]).to eql(ride1)
      expect(amusement_park.rides_alphabetically[2]).to eql(ride4)
      expect(amusement_park.rides_alphabetically[3]).to eql(ride3)
    end
  end
end

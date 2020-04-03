require "rails_helper"

RSpec.describe "When I visit an amusement park's show page", type: :feature do
  before(:each) do
    @amusement_park = AmusementPark.create(name:"Ryan's Adventures", admission_price: 60)
    @ride1 = @amusement_park.rides.create(name:"Lightning Racer", thrill_rating: 9)
    @ride2 = @amusement_park.rides.create(name:"Storm Runner", thrill_rating: 7)
    @ride3 = @amusement_park.rides.create(name:"Great Bear, The", thrill_rating: 5)
  end

  it "I see name and admission price for amusement park" do
    visit "/amusement_parks/#{@amusement_park.id}"

    within(".park-info") do
      expect(page).to have_content(@amusement_park.name)
      expect(page).to have_content("Admissions: $#{@amusement_park.admission_price}.00")
    end
  end

  it "I see names of all the rides for amusement park listed alphabetically" do

  end

  xit "I see average thrill rating of amusement park's rides" do

  end
end

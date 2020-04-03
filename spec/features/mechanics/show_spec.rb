require "rails_helper"

RSpec.describe "When I visit a mechanics show page.", type: :feature do
  before(:each) do
    @amusement_park = AmusementPark.create(name:"Ryan's Adventures", admission_price: 60)

    @mechanic1 = Mechanic.create(name:"Ralph", years_of_experience: 21)

    @ride1 = @amusement_park.rides.create(name:"Lightning Racer", thrill_rating: 9)
    @ride2 = @amusement_park.rides.create(name:"Storm Runner", thrill_rating: 7)
    @ride3 = @amusement_park.rides.create(name:"Great Bear, The", thrill_rating: 5)

    RideMechanic.create(ride:@ride1, mechanic:@mechanic1)
    RideMechanic.create(ride:@ride2, mechanic:@mechanic1)
    visit "/mechanics/#{@mechanic1.id}"
  end

  it "I see their name, years of experience, and names of all rides they're working on." do
    within(".mechanic-info") do
      expect(page).to have_content("Mechanic: #{@mechanic1.name}")
      expect(page).to have_content("Years of Experience: #{@mechanic1.years_of_experience}")
    end

    within(".workload-list") do
      expect(page).to have_content("Current rides they're working on:")
      within("#ride-#{@ride1.id}") do
        expect(page).to have_content(@ride1.name)
      end
      within("#ride-#{@ride2.id}") do
        expect(page).to have_content(@ride2.name)
      end
    end
  end

  xit "I can add a ride to their workload" do
    within(".add-to-workload") do
      expect(page).to have_content("Add a ride to workload:")

      fill_in :ride_id, with: "#{@ride3.id}"
      click_button("Submit")
    end

    expect(current_path).to eql("/mechanics/#{@mechanic1.id}")

    within(".workload-list") do
      expect(page).to have_content("Current rides they're working on:")
      within("#ride-#{@ride1.id}") do
        expect(page).to have_content(@ride1.name)
      end
      within("#ride-#{@ride2.id}") do
        expect(page).to have_content(@ride2.name)
      end
      within("#ride-#{@ride3.id}") do
        expect(page).to have_content(@ride3.name)
      end
    end
  end
end

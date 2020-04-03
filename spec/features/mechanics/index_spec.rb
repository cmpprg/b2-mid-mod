require "rails_helper"

RSpec.describe "When I visit a mechanics index page.", type: :feature do
  it "I see a header saying 'All Mechanics'." do
    visit "/mechanics"

    within("h1") do
      expect(page).to have_content("All Mechanics")
    end
  end

  it "I see a list of all mechanic's names and their years of experience" do
    mechanic1 = Mechanic.create(name:"Ralph", years_of_experience: 21)
    mechanic2 = Mechanic.create(name:"Rhonda", years_of_experience: 12)
    mechanic3 = Mechanic.create(name:"Sally", years_of_experience: 3)

    visit "/mechanics"

    within(".list") do
      within("#mechanic-#{mechanic1.id}") do
        expect(page).to have_content("#{mechanic1.name} - #{mechanic1.years_of_experience} years of experience")
      end
      within("#mechanic-#{mechanic2.id}") do
        expect(page).to have_content("#{mechanic2.name} - #{mechanic2.years_of_experience} years of experience")
      end
      within("#mechanic-#{mechanic3.id}") do
        expect(page).to have_content("#{mechanic3.name} - #{mechanic3.years_of_experience} years of experience")
      end
    end
  end
end

require 'rails_helper'

RSpec.describe "On the Index page", type: :feature do
  it "sees the name of each shelter" do
    shelter_1 = Shelter.create!(name: "John's Shelter",
                              address: "1550 East 15th",
                              city: "Denver",
                              state: "Colorado",
                              zip: 80206
                            )
    shelter_2 = Shelter.create!(name: "Mountain Shelter",
                              address: "1234 West 12th",
                              city: "Denver",
                              state: "Colorado",
                              zip: 80204
                            )

    visit "/shelters"

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content(shelter_2.name)
  end
end

# User Story 2, Shelter Index
#
# As a visitor
# When I visit '/shelters'
# Then I see the name of each shelter in the system

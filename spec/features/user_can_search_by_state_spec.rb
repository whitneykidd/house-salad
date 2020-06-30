require 'rails_helper'


feature "user can search for house members" do

  scenario "user submits valid state name" do
    visit '/'

    select "Colorado", from: :state
    click_on "Locate Members of the House"
    expect(current_path).to eq(search_path)
    expect(page).to have_content("7 Results")
    expect(page).to have_css(".member", count: 7)

    within(first(".member")) do
      expect(page).to have_css(".name")
      expect(".name").not_to be_empty
      expect(page).to have_css(".role")
      expect(".role").not_to be_empty
      expect(page).to have_css(".party")
      expect(".party").not_to be_empty
      expect(page).to have_css(".district")
      expect(".district").not_to be_empty
    end
  end
end

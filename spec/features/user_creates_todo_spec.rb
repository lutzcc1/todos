require "rails_helper"

feature "user creates todo" do
    scenario "succesfully" do
        visit root_path

        click_on "Add todo"
        fill_in "Title", with: "buy milk"
        click_on "submit"

        expect(page).to have_css ".todos li", text: "buy milk"
    end
end

#click_on ""
#fill_in "", with: ""
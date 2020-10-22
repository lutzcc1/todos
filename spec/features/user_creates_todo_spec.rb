require "rails_helper"

feature "user creates todo" do
    scenario "succesfully" do
        sign_in

        click_on "Add todo"
        fill_in "Title", with: "buy milk"
        click_on "submit"

        expect(page).to have_css ".todos li", text: "buy milk"
    end
end

require "rails_helper"

feature "User complete a todo" do
    scenario "complete todo" do
        sign_in

        click_on "Add todo"
        fill_in "Title", with: "buy milk"
        click_on "submit"

        click_on "mark complete"

        expect(page).to have_css ".todos li.completed", text: "buy milk"
    end
end
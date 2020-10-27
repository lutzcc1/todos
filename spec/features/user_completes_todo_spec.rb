require "rails_helper"

feature "User complete a todo" do
    scenario "complete todo" do
        sign_in

        create_todo("buy milk")

        click_on "mark complete"

        expect(page).to check_completed_todo "buy milk"
    end
end
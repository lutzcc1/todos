require "rails_helper"

feature "user marks todo as incomplete" do
    scenario "succesfully" do
        sign_in

        create_todo "buy milk"

        click_on "mark complete"
        click_on "mark incomplete"

        expect(page).not_to check_completed_todo "buy milk"
        expect(page).to check_todo "buy milk"
    end
end
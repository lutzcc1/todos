require "rails_helper"

feature "user creates todo" do
    scenario "succesfully" do
        sign_in

        create_todo("buy milk")

        expect(page).to check_todo "buy milk"
    end
end

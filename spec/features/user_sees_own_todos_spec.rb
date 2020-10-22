require "rails_helper"

feature "User sees own todos" do
    scenario "doesn't see others' todos" do
        Todo.create!(email: "luis@teloslabs.co", title: "Be a pro!")

        sign_in_as "someone@example.com"

        expect(page).not_to have_css ".todos li", text: "Be a pro!"
    end
end
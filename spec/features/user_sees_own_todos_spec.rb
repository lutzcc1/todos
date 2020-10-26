require "rails_helper"

feature "User sees own todos" do
    scenario "doesn't see others' todos" do
        Todo.create!(email: "luis@teloslabs.co", title: "Be a pro!")

        sign_in_as "someone@example.com"

        expect(page).not_to have_css ".todos li", text: "Be a pro!"
    end

    scenario "sees own todos" do
        Todo.create(email: "someone@example.com", title: "this shit is mine!")

        sign_in_as "someone@example.com"

        expect(page).to have_css ".todos li", text: "this shit is mine!"
    end
end
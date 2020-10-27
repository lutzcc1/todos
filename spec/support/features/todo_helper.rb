module Features
    def create_todo(task)
        click_on "Add todo"
        fill_in "Title", with: task
        click_on "submit"
    end
end
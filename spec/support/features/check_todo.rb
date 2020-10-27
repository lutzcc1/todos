module Features
    def check_todo(todo_title)
        have_css ".todos li", text: todo_title
    end

    def check_completed_todo(todo_title)
        have_css ".todos li.completed", text: todo_title
    end
end
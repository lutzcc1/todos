class CompletionsController < ApplicationController
    def create
        todos
        redirect_to todos_path
    end

    private

    def todos
        todo = current_user.todos.find(params[:todo_id])
        
        unless todo.completed?
            todo.touch :completed_at
        else
            todo.update(completed_at: nil)
        end
    end
end
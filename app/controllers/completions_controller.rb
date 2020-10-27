class CompletionsController < ApplicationController
    def create
        todos
        redirect_to todos_path
    end

    private

    def todos
        current_user.todos.find(params[:todo_id]).touch :completed_at
    end
end
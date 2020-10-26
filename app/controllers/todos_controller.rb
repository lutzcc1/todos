class TodosController < ApplicationController
    before_action :authenticate

    def index
        @todos = Todo.where(email: get_email)
    end

    def new
        @todo = Todo.new
    end

    def create
        @todo = Todo.create(todos_params.merge(email: get_email))
        redirect_to todos_path
    end

    private

    def todos_params
        params.require(:todo).permit(:title)
    end
    
end
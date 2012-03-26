class TodosController < ApplicationController
  def index
    @todos = current_user.todos
  end

  def new
    @todo = Todo.new
  end

  def create 
    @todo = Todo.new(params[:todo].
                 merge(owner: current_user.email_address))
    if(@todo.save)
    redirect_to todos_path
    else
      render :new
    end
  end
end

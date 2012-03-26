class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create 
    @todo = Todo.new(params[:todo])
    if(@todo.save)
    redirect_to todos_path
    else
      render :new
    end
  end
end

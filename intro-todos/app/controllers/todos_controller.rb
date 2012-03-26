class TodosController < ApplicationController
  def index
  end

  def new
    @todo = Todo.new
  end

  def create 
    redirect_to todos_path
  end
end

class TodoListsController < ApplicationController
  before_action :load_todo, only: [:edit, :destroy]

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to todo_lists_path
    else
      render "new"
    end
  end

  def edit
  end

  def destroy
    @todo.destroy
    redirect_to todo_lists_path
  end

  private
  def load_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:text, :complete)
  end
end

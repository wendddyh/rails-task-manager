class TasksController < ApplicationController
  def index
    @tasks = Task.all

  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.new(tasks_params)
    @tasks.save
    redirect_to root_path
  end

  def edit
    @tasks = Task.find(params[:id])
  end

  def update
    @tasks = Task.find(params[:id])
    @tasks.update(tasks_params)
    redirect_to root_path
  end

  def destroy
    @tasks = Task.find(params[:id])
    @tasks.destroy
    redirect_to root_path, status: :see_other
  end

  private
  # to prevent input forgery

  def tasks_params
    params.require(:task).permit(:title, :details, :completed)
  end

end

class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    Task.create(title: params[:title])
    redirect_to root_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

end

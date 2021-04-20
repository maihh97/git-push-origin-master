class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    if @task.completed == true
      return @status = "This task has been completed!"
    else
      return @status = "This task has not been completed!"
    end
  end
end

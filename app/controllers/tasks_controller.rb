class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]
  def index
    @task = Task.all
  end

  def show
    if @task.completed == true
      return @status = "This task has been completed!"
    else
      return @status = "This task has not been completed!"
    end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit; end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:title,:details)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end

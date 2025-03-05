class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render :index
  end

  def create
    @task = Task.create(
      title: params[:title],
      start_time: params[:start_time],
      end_time: params[:end_time],
      description: params[:description],
    )
    render :show
  end

  def show
    @task = Task.find_by(id: params[:id])
    render :show
  end

  def update
    @task = Task.find_by(id: params[:id])
    @task.update(
      title: params[:title] || @task.title,
      start_time: params[:start_time] || @task.start_time,
      end_time: params[:end_time] || @task.end_time,
      description: params[:description] || @task.description,
    )
    render :show
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    @task.destroy
    render json: { message: "Task destroyed successfully" }
  end

  def task_params
    params.require(:task).permit(:title, :url, :start_time, :end_time, :description, :priority, :required_time, :reminder)
  end  
end

class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render :index
  end

  def create
    @task = Task.create(task_params) # ✅ Uses strong params
    if @task.persisted?
      render :show
    else
      render json: { errors: @task.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @task = Task.find_by(id: params[:id])
    if @task
      render :show
    else
      render json: { error: "Task not found" }, status: :not_found
    end
  end

  def update
    @task = Task.find_by(id: params[:id])
    if @task
      if @task.update(task_params) # ✅ Ensures priority, title, and required_time update correctly
        render :show
      else
        render json: { errors: @task.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { error: "Task not found" }, status: :not_found
    end
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    if @task
      @task.destroy
      render json: { message: "Task destroyed successfully" }
    else
      render json: { error: "Task not found" }, status: :not_found
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :url, :start_time, :end_time, :description, :priority, :required_time, :reminder)
  end  
end

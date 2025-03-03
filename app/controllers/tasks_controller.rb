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
end

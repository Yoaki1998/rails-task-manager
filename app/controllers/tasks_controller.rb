class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    p "JE SUIS ICIIIIIIIIII"
    p @task
  end

  def new
    @task = Task.new
  end

  def create
    @params = params[:task]
    Task.create title: @params[:title], details: @params[:details]
    redirect_to index_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update title: params[:title], details: params[:details]
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    # no need for app/views/tasks/destroy.html.erb
    redirect_to index_path
  end
end

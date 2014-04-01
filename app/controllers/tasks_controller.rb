class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @task = Task.new
    render('tasks/index.html.erb')
  end

  def new
    @task = Task.new
    render('tasks/new.html.erb')
  end

  def create
    @task = Task.new(:description => params[:description])
    if @task.save
      render('tasks/success.html.erb')
    else
      render('tasks/new.html.erb')
    end
  end

  def edit
    @task = Task.find(params[:id])
    render('tasks/edit.html.erb')
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(:description => params[:description])
      render('tasks/success.html.erb')
    else
      render('tasks/edit.html.erb')
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    render('tasks/destroy.html.erb')
  end

  def mark
    @task = Task.find(params[:id])
    if @task.mark(:done => params[:true])
      redirect_to "/"
    else
      render('tasks/edit.html.erb')
    end
  end
end

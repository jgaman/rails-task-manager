class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  def index
    @tasks = Task.all
  end

  # GET /tasks/:id
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # POST /tasks
  def create
    task = Task.new(tasks_params)
    tasks.save
  end

  def edit
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end
end

class TasksController < ApplicationController
  def index
    @boards = Board.all
    @board = Board.find(params[:board_id])
  end

  def new
    @boards = Board.all
    @board = Board.find(params[:board_id])
  end

  def create
    @task = Task.new(task_params)
    @boards = Board.all
    @board = Board.find(params[:board_id])
    if @task.save
      render :index
    end
  end

  private

  def task_params
    params.permit(:title, :text, :inportance, :deadline, :hour, :user_id, :board_id, :check)
  end
end

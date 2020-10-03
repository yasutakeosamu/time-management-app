class TasksController < ApplicationController
  before_action :get_boards

  def index
  end

  def new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      render :index
    end
  end

  private

  def task_params
    params.permit(:title, :text, :inportance, :deadline, :hour, :user_id, :board_id, :check)
  end

  def get_boards
    @boards = Board.where(user_id:current_user.id)
    @board = Board.find(params[:board_id])
  end
end

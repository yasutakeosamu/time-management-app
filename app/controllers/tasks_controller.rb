class TasksController < ApplicationController
  before_action :get_boards, except: :update

  def index
    @task = Task.where(board_id:@board.id)
  end

  def new
  end

  def create
    @task = Task.new(task_params)
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @boards = Board.where(user_id:current_user.id)
    @board = Board.find(params[:task][:board_id])
    @task = Task.find(params[:id])
    @task.update(task_update_params)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    
  end

  def check
    task = Task.find(params[:id])
    if task.check
      task.update(check: false)
    else
      task.update(check: true)
    end
    item = Task.find(params[:id])
    render json:{ task: item }
  end

  private

  def task_params
    params.permit(:title, :text, :inportance, :deadline, :hour, :user_id, :board_id, :check)
  end

  def task_update_params
    params.require(:task).permit(:title, :text, :inportance, :deadline, :hour, :user_id, :board_id, :check)
  end

  def get_boards
    @boards = Board.where(user_id:current_user.id)
    @board = Board.find(params[:board_id])
  end
end

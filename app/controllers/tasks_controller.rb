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
  end
end

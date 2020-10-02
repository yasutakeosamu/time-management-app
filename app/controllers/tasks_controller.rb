class TasksController < ApplicationController
  def index
    @boards = Board.all
    @board = Board.find(params[:board_id])
  end
end

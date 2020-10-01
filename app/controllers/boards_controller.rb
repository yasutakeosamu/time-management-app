class BoardsController < ApplicationController
  def index
  end

  def create
    @board = Board.new(name:params[:name],user_id:current_user.id)
    redirect_to root_path if @board.save
  end

end

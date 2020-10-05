class BoardsController < ApplicationController
  def index
    @boards = Board.where(user_id:current_user.id)
  end

  def create
    Board.create(name:params[:name],user_id:current_user.id)
    redirect_to root_path
  end

  def destroy
    Board.destroy(params[:id])
    redirect_to root_path
  end

end

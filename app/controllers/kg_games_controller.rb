class KgGamesController < ApplicationController
  def index
    @kg_games = KgGame.all
  end

  def show
    @kg_game = KgGame.find(params[:id])
  end

  def new
    @kg_game = KgGame.new
  end

  def create
    @kg_game = KgGame.new(kg_game_params)
    @kg_game.save

    redirect_to kg_game_path(@kg_game)
  end

  def update
  end

  def edit
  end

  def destroy
    @kg_game = KgGame.find(params[:id])
    if @kg_game.destroy
      flash[:notice] = "Game deleted successfully!"
    else
      flash[:alert] = "Failed to delete game."
    end

    redirect_to kg_games_path, status: :see_other
  end

  private

  def kg_game_params
    params.require(:kg_game).permit(:name, :password)
  end
end

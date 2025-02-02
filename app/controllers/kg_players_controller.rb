class KgPlayersController < ApplicationController
  before_action :set_kg_game, only: [:new, :create, :destroy, :show]

  def index
  end

  def show
    @kg_game = KgGame.find(params[:kg_game_id])
    @kg_player = KgPlayer.find(params[:id])
  end

  def new
    @kg_player = KgPlayer.new
  end

  def create
    @kg_player = KgPlayer.new(kg_player_params)
    @kg_player.kg_game = @kg_game
    @kg_player.save

    redirect_to kg_game_path(@kg_game)
  end

  def destroy
    @kg_player =  @kg_game.kg_players.find(params[:id])
    @kg_player.destroy

    redirect_to kg_game_path(@kg_game), status: :see_other, notice: "Player removed!"
  end

  def update
  end

  def edit
  end

  private

  def kg_player_params
    params.require(:kg_player).permit(:name, :color)
  end

  def set_kg_game
    @kg_game = KgGame.find(params[:kg_game_id])
  end

end

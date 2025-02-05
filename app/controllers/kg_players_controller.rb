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

  def kill_target
    @kg_game = KgGame.find(params[:kg_game_id])
    @kg_player = KgPlayer.find(params[:id])

    victim_id = @kg_player.target.to_i # Convert to integer
    victim = KgPlayer.find_by(id: victim_id) # Use `find_by` to avoid errors if nil

    new_target_id = victim.target.to_i
    new_kill_mean = victim.kill_mean

    unless victim
      p "Error: Victim not found!"
      return redirect_to kg_game_kg_player_path(@kg_game, @kg_player)
    end

    @kg_player.update!(
      target: new_target_id,
      kill_mean: new_kill_mean#,
      #number_of_kills: @kg_player.number_of_kills + 1
    )

    victim.update!(state: "dead")

    if @kg_game.check_end_of_game
      p "Le jeu est terminé!"
      redirect_to end_game_screen_kg_game_path(@kg_game)
      return
    end

    redirect_to kg_game_kg_player_path(@kg_game, @kg_player)
  end

  private

  def kg_player_params
    params.require(:kg_player).permit(:name, :color)
  end

  def set_kg_game
    @kg_game = KgGame.find(params[:kg_game_id])
  end

end

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
    @kg_game.state = "setup"
    @kg_game.save

    redirect_to kg_game_path(@kg_game)
  end

  def update
  end

  def edit
  end

  def destroy
    @kg_game = KgGame.find(params[:id])
    @kg_game.destroy

    redirect_to kg_games_path, status: :see_other
  end

  def verify_password
    @kg_game = KgGame.find(params[:id])
  end

  def verify_password_check
    @kg_game = KgGame.find(params[:id])
    entered_password = params[:password]

    if @kg_game.password == entered_password
      redirect_to kg_game_path(@kg_game)
    else
      flash[:alert] = "Incorrect password, try again."
      redirect_to verify_password_kg_game_path(@kg_game), alert: "Incorrect password"
    end
  end

  def start_game
    @kg_game = KgGame.find(params[:id])
    @kg_game.state = "in_progress"
    @kg_game.save

    players = @kg_game.kg_players.shuffle
    kill_means = KillMean.all.shuffle

    players.each_with_index do |player, index|
      player.update!(
        target: players[(index + 1) % players.length].id,
        kill_mean: kill_means[index]
      )
    end

    redirect_to kg_game_path(@kg_game)
  end

  def end_game_screen
  end

  private

  def kg_game_params
    params.require(:kg_game).permit(:name, :password)
  end
end

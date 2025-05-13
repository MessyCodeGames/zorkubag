class MyGamesController < ApplicationController
  def index
    @my_games = MyGame.all
  end

  def show
    @my_game = MyGame.find(params[:id])
  end
end

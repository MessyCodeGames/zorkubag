class GamesController < ApplicationController
  def index
    @my_games = MyGame.all
  end

  def show
  end
end

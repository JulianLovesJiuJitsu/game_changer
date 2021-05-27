class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @rental = Rental.new
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = User.first

    if @game.save
      redirect_to my_games_path(@game)
    else
      render :new
    end
  end

  private

  def game_params
    params.require(:game).permit(:name, :description, :category, :min_players, :max_players, :location, :price, :photo)
  end
end

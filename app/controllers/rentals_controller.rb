class RentalsController < ApplicationController
  before_action :set_rental, only: :destroy
  before_action :set_game, only: [:new, :create]

  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
  end

  def create
    @game = Game.find(params[:game_id])
    @rental = Rental.new(rental_params)
    @rental.game = @game
    @rental.user = current_user
    if @rental.save
      redirect_to my_rentals_path, notice: "Congratulations! you booked #{@game.name}. An email has been sent to your inbox"
    else
      render :new
    end
  end

  def destroy
    @rental.destroy
    redirect_to game_path(@rental.games)
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def set_game
    @game = Game.find(params[:game_id])
  end
end

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
    @rental = Rental.new(rental_params)
    @bookmark.list = @list
    if @rental.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def destroy
    @rental.destroy
    redirect_to game_path(@rental.list)
  end

  private

  def rental_params
    params.require(:rentals).permit(:start_date, :end_date)
  end

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def set_game
    @game = Game.find(params[:game_id])
  end
end

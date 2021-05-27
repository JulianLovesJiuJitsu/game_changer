class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def my_rentals
    @rentals = Rental.all

    #@rentals = Rental where user_id matches blabla
  end

  def my_games
    @games = Game.all
  end
end

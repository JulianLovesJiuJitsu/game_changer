class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @rentals = Rental.all
    #@rentals = Rental where user_id matches blabla
  end
end

class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @astronaut = Astronaut.find(params[:astronaut_id])
  end

  def create
    @astronaut = Astronaut.find(params[:astronaut_id])
    @booking = Booking.new(strong_params)
    @booking.astronaut = @astronaut
    @booking.save
    redirect_to root_path
  end

  private

  def strong_params
    params.require(:booking).permit(:astronaut_id)
  end
end

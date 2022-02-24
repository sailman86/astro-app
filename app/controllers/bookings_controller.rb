class BookingsController < ApplicationController

  def create
    @astronaut = Astronaut.find(params[:astronaut_id])
    @booking = Booking.new(strong_params)
    @booking.user = current_user
    @booking.astronaut = @astronaut
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def strong_params
    params.require(:booking).permit(:date)
  end
end

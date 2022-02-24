class AstronautsController < ApplicationController
  before_action :set_astronaut, only: [:show, :destroy]
  def index
    if params[:query].present?
      @astronauts = Astronaut.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @astronauts = Astronaut.all
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @astronaut = Astronaut.new
  end

  def create
    @astronaut = Astronaut.new(astronaut_params)
    @astronaut.user = current_user

    if @astronaut.save

      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @astronaut.destroy

    redirect_to astronauts_path
  end

  private

  def set_astronaut
    @astronaut = Astronaut.find(params[:id])
  end

  def astronaut_params
    params.require(:astronaut).permit(:name, :bio, :nationality, :time_slot, :photo)
  end
end

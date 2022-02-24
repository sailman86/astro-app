class AstronautsController < ApplicationController
  before_action :astronauts, only: [:show, :destroy]
  def index
    @astronauts = Astronaut.all
  end

  def show
  end

  def new
    @astronaut = Astronaut.new
  end

  def create
    @astronaut = Astronaut.create(astronaut_params[:astronaut])

    redirect_to astronaut_path(@astronaut)
  end

  def destroy
    @astronaut.destroy

    redirect_to astronaut_path
  end

  private

  def set_astronaut
    @astronaut = Astronaut.find(astronaut_params[:id])
  end
  
  def astronaut_params
    params.require(:astronaut).permit(:name, :bio, :nationality)
  end
end

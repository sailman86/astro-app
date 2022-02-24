class AstronautsController < ApplicationController
  def index
    if params[:query].present?
      @astronauts = Astronaut.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @astronauts = Astronaut.all
    end
  end

  def show
    @astronaut = Astronaut.find(params[:id])
  end
end

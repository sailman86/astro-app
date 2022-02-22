class AstronautsController < ApplicationController
  def index
    @astronauts = Astronaut.all
  end
end

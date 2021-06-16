class MuseumsController < ApplicationController
  def show
    @museum = Museum.find(params[:id])
    @artefacts = @museum.artefacts
  end
end

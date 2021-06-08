class ArtefactsController < ApplicationController
  def index
    @artefacts = Artefact.all
  end

  def show
    @artefact = Artefact.find(params[:id])
  end
end

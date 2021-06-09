class ArtefactsController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite

  def index
    @artefacts = Artefact.all
  end

  def show
    @artefact = Artefact.find(params[:id])
  end

  def toggle_favorite
    @artefact = Artefact.find_by(id: params[:id])
    current_user.favorited?(@artefact) ?
current_user.unfavorite(@artefact) :
current_user.favorite(@artefact)
  end
end

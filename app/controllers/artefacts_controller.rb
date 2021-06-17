class ArtefactsController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @artefacts = []
    @collections = []
    @museums = []
    if params[:query].present?
      results = PgSearch.multisearch(params[:query])
      results.each do |result|
        @artefacts << result.searchable if result.searchable_type == "Artefact"
        @collections << result.searchable if result.searchable_type == "Collection"
        @museums << result.searchable if result.searchable_type == "Museum"
      end
    else
       @artefacts = Artefact.all
       @collections = Collection.all
       @museums = Museum.all
    end
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

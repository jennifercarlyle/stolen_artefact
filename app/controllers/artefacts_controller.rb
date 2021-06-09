class ArtefactsController < ApplicationController
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
end

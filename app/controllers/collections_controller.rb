class CollectionsController < ApplicationController
  def show
    @collection = Collection.find(params[:id])
    @artefacts = Artefact.where(collection: @collection)


    @markers = @artefacts.geocoded.map do |artefact|
      {
        lat: artefact.latitude,
        lng: artefact.longitude
      }
    end
  end
end

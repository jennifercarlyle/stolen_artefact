class CollectionsController < ApplicationController
  def show
    @collection = Collection.find(params[:id])
    # @artefacts = Artefact.where(collection: @collection)
    @artefacts = @collection.artefacts


    @markers = @artefacts.geocoded.map do |artefact|
      {
        lat: artefact.latitude,
        lng: artefact.longitude,
        info_window: render_to_string(partial: "info_window", locals: { artefact: artefact }),
        image_url:  helpers.asset_url('logo.png')
      }
    end

     @markers << {
        lat: @collection.latitude,
        lng: @collection.longitude,
        info_window: render_to_string(partial: "info_window_collection", locals: { collection: @collection }),
        image_url:  helpers.asset_url('plaque.png')
      }
    end
end


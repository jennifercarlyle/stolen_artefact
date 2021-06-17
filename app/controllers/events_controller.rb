class EventsController < ApplicationController
  def show
    @artefact = Artefact.find(params[:artefact_id])
    @events = @artefact.events
  end
end

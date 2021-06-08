class FavoritesController < ApplicationController
  def create
    @artefact = Artefact.find(params[:artefact_id])
    @favorite = Farvorite.new(user: current_user, artefact: @artefact)
    if @favorite.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end
end

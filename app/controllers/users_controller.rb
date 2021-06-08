class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @favorited_artefacts = @user.favorites.map do { |f| Artefact.find(f.artefact_id) }
  end
end
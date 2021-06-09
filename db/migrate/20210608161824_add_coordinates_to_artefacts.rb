class AddCoordinatesToArtefacts < ActiveRecord::Migration[6.0]
  def change
    add_column :artefacts, :latitude, :float
    add_column :artefacts, :longitude, :float
  end
end

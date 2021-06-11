class AddCoordinatesToCollections < ActiveRecord::Migration[6.0]
  def change
    add_column :collections, :origin_location, :string
    add_column :collections, :latitude, :float
    add_column :collections, :longitude, :float
  end
end

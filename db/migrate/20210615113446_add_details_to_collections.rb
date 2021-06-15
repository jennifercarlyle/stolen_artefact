class AddDetailsToCollections < ActiveRecord::Migration[6.0]
  def change
    add_column :collections, :number_of_artefacts, :string
    add_column :collections, :number_of_museums, :string
    add_column :collections, :introduction, :text
    add_column :collections, :context, :text
  end
end

class RemoveArtefactFromSubmissions < ActiveRecord::Migration[6.0]
  def change
    remove_reference :submissions, :artefact, index: true, foreign_key: true
  end
end

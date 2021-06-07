class CreateArtefacts < ActiveRecord::Migration[6.0]
  def change
    create_table :artefacts do |t|
      t.string :name
      t.date :origin_year
      t.string :origin_location
      t.string :current_location
      t.string :context
      t.string :made_by
      t.string :material
      t.string :registration_num
      t.references :collection, null: false, foreign_key: true
      t.references :museum, null: false, foreign_key: true

      t.timestamps
    end
  end
end

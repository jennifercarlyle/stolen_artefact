class ChangeOriginDateToString < ActiveRecord::Migration[6.0]
  def change
    change_column :artefacts, :origin_year, :string
  end
end

class ChangeDateToEvents < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :date, :year
    change_column :events, :date, :string
  end
end

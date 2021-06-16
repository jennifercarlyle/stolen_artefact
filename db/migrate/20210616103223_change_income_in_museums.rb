class ChangeIncomeInMuseums < ActiveRecord::Migration[6.0]
  def change
    change_column :museums, :income, :float
  end
end

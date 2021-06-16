class AddIncomeToMuseums < ActiveRecord::Migration[6.0]
  def change
    add_column :museums, :income, :integer
    change_column :museums, :visitors_per_year, :float
  end
end

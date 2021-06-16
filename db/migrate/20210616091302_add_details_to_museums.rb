class AddDetailsToMuseums < ActiveRecord::Migration[6.0]
  def change
    add_column :museums, :founded, :integer
    add_column :museums, :opened, :integer
    add_column :museums, :visitors_per_year, :integer
    add_column :museums, :funding, :string
    add_column :museums, :director, :string
  end
end

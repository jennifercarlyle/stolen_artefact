class AddDetailsToSubmissions < ActiveRecord::Migration[6.0]
  def change
    add_column :submissions, :name, :string
    add_column :submissions, :origin_year, :string
    add_column :submissions, :origin_location, :string
    add_column :submissions, :current_location, :string
    add_column :submissions, :context, :string
    add_column :submissions, :made_by, :string
    add_column :submissions, :material, :string
    add_column :submissions, :registration_num, :string
  end
end

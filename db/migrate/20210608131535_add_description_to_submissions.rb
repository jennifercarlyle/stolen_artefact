class AddDescriptionToSubmissions < ActiveRecord::Migration[6.0]
  def change
    add_column :submissions, :description, :text
  end
end

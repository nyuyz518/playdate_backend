class AddLatToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :lat, :float
  end
end

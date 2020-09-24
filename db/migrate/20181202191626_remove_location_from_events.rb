class RemoveLocationFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :location, :string
  end
end

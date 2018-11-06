class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :time
      t.string :location
      t.string :img
      t.string :description

      t.timestamps
    end
  end
end
